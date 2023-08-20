const express = require("express");
const {
  createCategory,
  fetchAllCategories,
} = require("../controller/Category");

const router = express.Router();

router.post("/", createCategory).get("/", fetchAllCategories);

exports.router = router;
