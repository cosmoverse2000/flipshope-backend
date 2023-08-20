const express = require("express");
const server = express();

const productRouters = require("./routes/Products");

//middlware
server.use(express.json()); //to parse req.body
server.use("/products", productRouters.router);

const mongoose = require("mongoose");

const main = async () => {
  await mongoose.connect("mongodb://127.0.0.1:27017/flipshopeDB");
  console.log("connection-established");
};
main().catch((err) => {
  console.log(err, "mongo connection err");
});

server.get("/", (req, res) => {
  res.json({ status: "success" });
});

server.listen(8080, () => {
  console.log("server started");
});
