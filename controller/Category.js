const { Category } = require("../model/Category");

exports.createCategory = async (req, res) => {
  const category = new Category(req.body);

  try {
    const doc = await category.save(); //saving instance to DB
    res.status(201).json(doc);
  } catch (err) {
    res.status(400).json(err);
  }
};

exports.fetchAllCategories = async (req, res) => {
  try {
    const doc = await Category.find({}).exec(); //query model from DB
    res.status(200).json(doc);
  } catch (err) {
    res.status(400).json(err);
  }
};
