const express = require("express");
const mongoose = require("mongoose");
const crypto = require("crypto");
const jwt = require("jsonwebtoken");
const cors = require("cors");
const path = require("path");
const server = express();
//DOTENV
require("dotenv").config();
//passport, local, jwt
const session = require("express-session");
const passport = require("passport");
const LocalStrategy = require("passport-local").Strategy;
const JwtStrategy = require("passport-jwt").Strategy;
const cookieParser = require("cookie-parser");
//routers imports
const productRouters = require("./routes/Products");
const categoryRouters = require("./routes/Categories");
const brandRouters = require("./routes/Brands");
const userRouters = require("./routes/Users");
const authRouters = require("./routes/Auth");
const cartItemRouters = require("./routes/CartsItems");
const orderRouters = require("./routes/Orders");
//
const { User } = require("./model/User");
const {
  isAuthorizedJWT,
  sanitizeUser,
  cookieExtractor,
} = require("./services/common");

//STRIPE WEBHHOOK START--------------------------------------------------------------
// This is your Stripe CLI webhook secret for testing your endpoint locally.
const endpointSecret = process.env.STRIPE_END_POINT;
//TODO: we will capture actute order on our live server end point as paymentIntentSuceed
server.post(
  "/webhook",
  express.raw({ type: "application/json" }),
  (request, response) => {
    const sig = request.headers["stripe-signature"];
    // console.log(sig, "sig");
    // console.log(request.body, "body");
    let event;

    try {
      // console.log("tried");
      event = stripe.webhooks.constructEvent(request.body, sig, endpointSecret);
    } catch (err) {
      console.log(err.message, "error");
      response.status(400).send(`Webhook Error: ${err.message}`);
      return;
    }

    // Handle the event
    switch (event.type) {
      case "payment_intent.succeeded":
        const paymentIntentSucceeded = event.data.object;
        console.log(paymentIntentSucceeded);
        // Then define and call a function to handle the event payment_intent.succeeded
        break;
      // ... handle other event types
      default:
        console.log(`Unhandled event type ${event.type}`);
    }

    // Return a 200 response to acknowledge receipt of the event
    response.send();
  }
);
//STRIPE WEBHHOOK END-------------------------------------------------------------

//pass-jwt Opts & JWT-tocken setup
const opts = {
  // jwtFromRequest: ExtractJwt.fromAuthHeaderAsBearerToken(),to extract token from bearer tkn
  jwtFromRequest: cookieExtractor, // to extract from cookie recieved
  secretOrKey: process.env.JWT_SECRET_KEY,
};

//middlwares
server.use(express.static(path.resolve(__dirname, "build")));
server.use(cookieParser());
server.use(
  session({
    secret: process.env.SESSION_SECRET_KEY,
    resave: true,
    saveUninitialized: true,
  })
);
server.use(passport.authenticate("session"));
server.use(
  cors({
    exposedHeaders: ["X-Total-Count"],
  })
);

server.use(express.json()); //to parse req.body

//routes
//isAutorized- here is router Middleware to protect routes
// is Authorized - here is same as protected in Frontend it will prevent routes to work
// is user not found that is authentication/login falied
//these routes will not work until authrized
// we can use JWT middlware aslo insteda of isAuthorized
server.use("/products", isAuthorizedJWT(), productRouters.router);
server.use("/categories", isAuthorizedJWT(), categoryRouters.router);
server.use("/brands", isAuthorizedJWT(), brandRouters.router);
server.use("/user", isAuthorizedJWT(), userRouters.router);
server.use("/auth", authRouters.router);
server.use("/cart", isAuthorizedJWT(), cartItemRouters.router);
server.use("/order", isAuthorizedJWT(), orderRouters.router);

//
//Passport - Local Strategy and JWT
passport.use(
  "local",
  new LocalStrategy({ usernameField: "email" }, async function (
    email,
    password,
    done
  ) {
    try {
      const user = await User.findOne({ email: email }).exec();

      if (!user) {
        return done(null, false, { message: "• User Not found !" }); //todo:safety
      }
      crypto.pbkdf2(
        password,
        user.salt,
        310000,
        32,
        "sha256",
        function (err, hashedPassword) {
          if (err) {
            return done(err);
          }

          if (!crypto.timingSafeEqual(user.password, hashedPassword)) {
            return done(null, false, { message: "• Invalid Credentials !" });
          }
          const token = jwt.sign(
            sanitizeUser(user),
            process.env.JWT_SECRET_KEY
          );
          //passed token here as object, so tobe saved as req.user.token in session
          return done(null, { token });
          //• this return line initiates serialization on LOGIN verified AND
          //• this will aslo create session simltaneously,
          //which will set as '{user:token}' in session body, avalable to whole backend
          //since we pass 'token' in 'done' here ,in session {user:'token'} will be stored
          //and would be available as req.user argument to whole backend body
          //if we pass 'user', user would be available , or anything
        }
      );
    } catch (err) {
      return done(err);
      // console.log(err, "Not OKKKKKKKKKKK");
    }
  })
);

// this startegy will be used on routes to protect them and needed a token auth to pass
// that bearer token is must to pass, which is alredy given to client on successfull
// login or signup
// and that token will be detokenized to jwt_payload:{id: ,role: }
// used that id to find 'user' from db and
// attaching that 'user'(here sanitized) to session(req.user)
passport.use(
  "jwt",
  new JwtStrategy(opts, async function (jwt_payload, done) {
    try {
      const user = await User.findOne({ _id: jwt_payload.id });
      if (user) {
        return done(null, sanitizeUser(user));
        //this will do serializaton attach 'user'sinec we send user not token to session
      } else {
        return done(null, false);
      }
    } catch (err) {
      return done(err, false);
    }
  })
);

//serialize user to create session
passport.serializeUser(function (user, cb) {
  process.nextTick(function () {
    return cb(null, user);
    //FORMAT-> cb(null,this_Thing_will_passed_as_arg_to_deserializer_when_called);,
    // NOTE:it will not set 'user': insession
    // this cb decides what to be 'serialized' not what to be stored in sesseion user
    //meaning if you pass constant also here instead of user or token it will also serialize
  });
});

//deserialize to check user exist is in backednd with that session
//this will run on all request comming to backend(express-session) independet of any thing
passport.deserializeUser(function (user, cb) {
  process.nextTick(function () {
    return cb(null, user);
    //FORMAT-> cb(null,this_thing_will_setted_as_'user:' in session body);
  });
});

//STRIPE START
// This is your test secret API key.
const stripe = require("stripe")(process.env.STRIPE_SERVER_KEY);

server.post("/create-payment-intent", async (req, res) => {
  const { totalPrice } = req.body;

  // Create a PaymentIntent with the order amount and currency
  const paymentIntent = await stripe.paymentIntents.create({
    amount: totalPrice * 100,
    currency: "inr",
    // In the latest version of the API, specifying the `automatic_payment_methods` parameter is optional because Stripe enables its functionality by default.
    automatic_payment_methods: {
      enabled: true,
    },
  });

  res.send({
    clientSecret: paymentIntent.client_secret,
  });
});

//STRIPE END

//mongoose connect mongodb local
const main = async () => {
  await mongoose.connect(process.env.MONGO_URL);
  console.log("mongo-connected");
};
main().catch((err) => {
  console.log(err, "mongo connection err");
});

//homepage get -forTESTING ONLY
// server.get("/", (req, res) => {
//   res.json({ status: "success" });
// });

//port defination
server.listen(process.env.PORT, () => {
  console.log("server started");
});

//NOTES:
// after login/signup and checkup serialization by this cb function done
// done(null, OBJECT_TO_BE_SAVED_AS_USER_IN_BAK_SESSION ) we save user in session
// to maintain similarity in code we will save
// In bak session after sucesfull login/signp
// req.user = {
//     token: token_genetared_while_login/signup using SanitzezUser & secretKey
// }
// but in case of isAuthorized on in routes 'jwt' staegy will put this as req.user in sess
// req.user = {
//     id : "22867627827sdbsjhdg"
//     role: "role"
// } = {satitizedUser(user)}
// so that while accesing all other routes, we have 'userId' in session to run all api's
// except 'auth'
