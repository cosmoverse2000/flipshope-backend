const express = require("express");
const {
  createProduct,
  fetchAllProductsQuery,
} = require("../controller/Product");

const router = express.Router();

router.post("/", createProduct).get("/", fetchAllProductsQuery);

exports.router = router;
