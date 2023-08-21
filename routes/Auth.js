const express = require("express");
const { signupUserAccount, loginUserAccount } = require("../controller/Auth");

const router = express.Router();

router.post("/signup", signupUserAccount).post("/login", loginUserAccount);

exports.router = router;
