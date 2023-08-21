const express = require("express");
const { fetchUserProfile, updateUserProfile } = require("../controller/User");

const router = express.Router();

router.get("/:userId", fetchUserProfile).patch("/:userId", updateUserProfile);

exports.router = router;
