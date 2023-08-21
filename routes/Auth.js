const express = require("express");
const { signupUserAccount } = require("../controller/Auth");

const router = express.Router();

router.post("/signup", signupUserAccount);

exports.router = router;
