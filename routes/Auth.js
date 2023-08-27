const express = require("express");
const {
  signupUserAccount,
  loginUserAccount,
  checkUserAccount,
} = require("../controller/Auth");
const { isAuthorizedJWT } = require("../services/common");
const passport = require("passport");

const router = express.Router();

router
  .post("/signup", signupUserAccount)
  .post("/login", passport.authenticate("local"), loginUserAccount)
  .get("/check", isAuthorizedJWT(), checkUserAccount);

exports.router = router;
