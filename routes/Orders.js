const express = require("express");
const { addToOrders } = require("../controller/Order");

const router = express.Router();

router
  .post("/", addToOrders)
  .get("/", addToOrders)
  .patch("/:cartItemId", addToOrders)
  .delete("/:cartItemId", addToOrders);

exports.router = router;
