const express = require("express");
const {
  addItemsToCart,
  fetchCartByUserId,
  updateCartItems,
} = require("../controller/Cart");

const router = express.Router();

router
  .post("/", addItemsToCart)
  .get("/", fetchCartByUserId)
  .patch("/:userId", updateCartItems);

exports.router = router;
