const express = require("express");
const {
  addItemToCart,
  fetchCartByUserId,
  updateCartItem,
  deleteCartItem,
} = require("../controller/CartItem");

const router = express.Router();

router
  .post("/", addItemToCart)
  .get("/", fetchCartByUserId)
  .patch("/:cartItemId", updateCartItem)
  .delete("/:cartItemId", deleteCartItem);

exports.router = router;
