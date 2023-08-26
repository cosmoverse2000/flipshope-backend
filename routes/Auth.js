const express = require("express");
const passport = require("passport");
const {
  signupUserAccount,
  loginUserAccount,
  checkUserAccount,
} = require("../controller/Auth");

const router = express.Router();

router
  .post("/signup", signupUserAccount)
  .post("/login", passport.authenticate("local"), loginUserAccount)
  .get("/check", checkUserAccount);

exports.router = router;
