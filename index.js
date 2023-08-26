const express = require("express");
const mongoose = require("mongoose");
const cors = require("cors");
const server = express();
//passport
const session = require("express-session");
const passport = require("passport");
const LocalStrategy = require("passport-local").Strategy;

//middlware
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

//Passport and Local Strategy
passport.use(
  new LocalStrategy(async function (username, password, done) {
    try {
      const user = await User.findOne({ email: username }).exec();

      if (!user) {
        done(null, false, { message: "• User Not found !" });
      } else if (password === user.password) {
        ///TODO: this woud be encrypted
        done(null, user); //this line initiates serialization on LOGIN
      } else {
        done(null, false, { message: "• Invalid Credentials !" });
      }
    } catch (err) {
      done(err);
      // console.log(err, "Not OKKKKKKKKKKK");
    }
  })
);

//serialize user to create session
passport.serializeUser(function (user, cb) {
  process.nextTick(function () {
    cb(null, { id: user.id, role: user.role });
  });
});

//deserialize to check user exist is in backednd with that session
passport.deserializeUser(function (user, cb) {
  process.nextTick(function () {
    return cb(null, { id: user.id, role: user.role });
  });
});
//HELPER FUNCTION
const isAuthorized = (req, res, done) => {
  if (req.user) {
    done();
  } else {
    res.send(401);
  }
};

//routers imports
const productRouters = require("./routes/Products");
const categoryRouters = require("./routes/Categories");
const brandRouters = require("./routes/Brands");
const userRouters = require("./routes/Users");
const authRouters = require("./routes/Auth");
const cartItemRouters = require("./routes/CartsItems");
const orderRouters = require("./routes/Orders");
const { User } = require("./model/User");
//routes
//isAutorized- here is router Middleware to protect routes
// is Authorized - here is same as protected in Frontend it will prevent routes to work
// is user not found that is authentication/login falied
//these routes will not work until authrized
server.use("/products", isAuthorized, productRouters.router);
server.use("/categories", categoryRouters.router);
server.use("/brands", brandRouters.router);
server.use("/user", userRouters.router);
server.use("/auth", authRouters.router);
server.use("/cart", cartItemRouters.router);
server.use("/order", orderRouters.router);

//mongoose connect mongodb local
const main = async () => {
  await mongoose.connect("mongodb://127.0.0.1:27017/flipshopeDB");
  console.log("connection-established");
};
main().catch((err) => {
  console.log(err, "mongo connection err");
});

//homepage get
server.get("/", (req, res) => {
  res.json({ status: "success" });
});

//port defination
server.listen(8080, () => {
  console.log("server started");
});
