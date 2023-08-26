const express = require("express");
const {
  addToOrders,
  fetchUserOrders,
  fetchAllOrders,
  updateOrder,
  deleteOrder,
} = require("../controller/Order");

const router = express.Router();

router
  .post("/", addToOrders)
  .get("/", fetchUserOrders)
  .get("/admin", fetchAllOrders)
  .patch("/admin/:orderId", updateOrder)
  .delete("/admin/:orderId", deleteOrder);

exports.router = router;
