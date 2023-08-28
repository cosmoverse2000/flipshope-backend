const express = require("express");
const mongoose = require("mongoose");
const crypto = require("crypto");
const jwt = require("jsonwebtoken");
const cors = require("cors");
const server = express();
//passport, local, jwt
const session = require("express-session");
const passport = require("passport");
const LocalStrategy = require("passport-local").Strategy;
const JwtStrategy = require("passport-jwt").Strategy;
const ExtractJwt = require("passport-jwt").ExtractJwt;
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

//pass-jwt Opts & JWT-tocken setup
const SECRET_KEY = "SECRET";
const opts = {
  // jwtFromRequest: ExtractJwt.fromAuthHeaderAsBearerToken(),to extract token from bearer tkn
  jwtFromRequest: cookieExtractor, // to extract from cookie recieved
  secretOrKey: SECRET_KEY,
};

//middlwares
server.use(cookieParser());
server.use(
  session({ secret: "keyboard cat", resave: true, saveUninitialized: true })
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
server.use("/products", isAuthorizedJWT(), productRouters.router);
// we can use JWT middlware aslo insteda of isAuthorized
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
          const token = jwt.sign(sanitizeUser(user), SECRET_KEY);
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
        //this will do serializaton attach user to session
      } else {
        return done(null, false);
      }
    } catch (err) {
      return done(err, false);
    }
  })
);

//serialize user to create session
passport.serializeUser(function (token, cb) {
  process.nextTick(function () {
    return cb(null, token);
    //FORMAT-> cb(null,this_Thing_will_passed_as_arg_to_deserializer_when_called);,
    // NOTE:it will not set 'user': insession
    // this cb decides what to be 'serialized' not what to be stored in sesseion user
    //meaning if you pass constant also here instead of user or token it will also serialize
  });
});

//deserialize to check user exist is in backednd with that session
//this will run on all request comming to backend(express-session) independet of any thing
passport.deserializeUser(function (token, cb) {
  process.nextTick(function () {
    return cb(null, token);
    //FORMAT-> cb(null,this_thing_will_setted_as_'user:' in session body);
  });
});

//mongoose connect mongodb local
const main = async () => {
  await mongoose.connect("mongodb://127.0.0.1:27017/flipshopeDB");
  console.log("mongo-connected");
};
main().catch((err) => {
  console.log(err, "mongo connection err");
});

//homepage get -forTESTING ONLY
server.get("/", (req, res) => {
  res.json({ status: "success" });
});

//port defination
server.listen(8080, () => {
  console.log("server started");
});
