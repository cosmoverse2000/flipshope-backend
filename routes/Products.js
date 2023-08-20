const express = require("express");
const {
  createProduct,
  fetchAllProductsQuery,
  fetchProductById,
  updateProduct,
} = require("../controller/Product");

const router = express.Router();

router
  .post("/", createProduct)
  .get("/", fetchAllProductsQuery)
  .get("/:id", fetchProductById)
  .patch("/:id", updateProduct);

exports.router = router;
