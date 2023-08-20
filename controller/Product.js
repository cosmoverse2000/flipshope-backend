const { Product } = require("../model/Product");

exports.createProduct = async (req, res) => {
  //this is our action function using 'Product' schemaModel to create its instance
  //   console.log(req, "BODY");
  const product = new Product(req.body); //instance created
  //   console.log(product, "Product");
  try {
    const doc = await product.save(); //saving instance to DB
    res.status(201).json(doc);
  } catch (err) {
    res.status(400).json(err);
  }
};

exports.fetchAllProductsQuery = async (req, res) => {
  const product = new Product(req.body);
  try {
    const doc = await product.save(); //saving instance to DB
    res.status(201).json(doc);
  } catch (err) {
    res.status(400).json(err);
  }
};
