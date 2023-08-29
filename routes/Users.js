const express = require("express");
const { fetchUserProfile, updateUserProfile } = require("../controller/User");

const router = express.Router();

router.get("/", fetchUserProfile).patch("/", updateUserProfile);

exports.router = router;
