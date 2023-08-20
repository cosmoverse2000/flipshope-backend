const { Brand } = require("../model/Brand");

exports.createBrand = async (req, res) => {
  const brand = new Brand(req.body);

  try {
    const doc = await brand.save(); //saving instance to DB
    res.status(201).json(doc);
  } catch (err) {
    res.status(400).json(err);
  }
};

exports.fetchAllBrands = async (req, res) => {
  try {
    const doc = await Brand.find({}).exec(); //query model from DB
    res.status(200).json(doc);
  } catch (err) {
    res.status(400).json(err);
  }
};
