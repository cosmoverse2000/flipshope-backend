const express = require("express");
const server = express();

const productRouters = require("./routes/Products");
const categoryRouters = require("./routes/Categories");
const brandRouters = require("./routes/Brands");

//middlware
server.use(express.json()); //to parse req.body
server.use("/products", productRouters.router);
server.use("/categories", categoryRouters.router);
server.use("/brands", brandRouters.router);

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
