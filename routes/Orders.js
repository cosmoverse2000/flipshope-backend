const express = require("express");
const { addToOrders, fetchUserOrders } = require("../controller/Order");

const router = express.Router();

router
  .post("/", addToOrders)
  .get("/", fetchUserOrders)
  .patch("/:cartItemId", addToOrders)
  .delete("/:cartItemId", addToOrders);

exports.router = router;
