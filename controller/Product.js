const { Product } = require("../model/Product");

//create ptoduct
exports.createProduct = async (req, res) => {
  //this is our action function using 'Product' schemaModel to create its instance
  //   console.log(req, "BODY");
  const product = new Product(req.body); //instance created using mongoose model 'Product'
  // console.log(product, "Product");
  try {
    const doc = await product.save(); //saving instance to DB
    res.status(201).json(doc);
  } catch (err) {
    res.status(400).json(err);
    // console.log(err, "Not OKKKKKKKKKKK");
  }
};

//get ptoduct list with fetch,sort, page
exports.fetchAllProductsQuery = async (req, res) => {
  //'filter' obj format ={"category":["smartphone","laptops"],"brand":['samsung','adad']}
  //'Sort' obj format ={_sort:"ratings",_order="asc"}
  //'pagination' obj format ={"page":2}
  // TODO: to support multiple categories

  //this 'query' will just store 'find query(in mongo lang)' for 'Product' Model
  let query = Product.find({});
  let totalCountQuery = Product.find({});

  // appending another queries, if there is query parms in url like sort,page,etc
  // NOTE: in 'get' requst we get 'query' parms, unlike POST-we get req.body

  //check _sort & _order present in url query
  //TODO: sorting by discounted price not orignal
  if (req.query._sort && req.query._order) {
    // appending mongo sorting query , here 'sort'  method is mongoose built in
    query = query.sort({ [req.query._sort]: req.query._order });
    totalCountQuery = totalCountQuery.sort({
      [req.query._sort]: req.query._order,
    });
  }
  if (req.query.category) {
    query = query.find({ category: req.query.category });
    totalCountQuery = totalCountQuery.find({ category: req.query.category });
  }
  if (req.query.brand) {
    query = query.find({ brand: req.query.brand });
    totalCountQuery = totalCountQuery.find({ brand: req.query.brand });
  }
  if (req.query._page && req.query._limit) {
    const pageSize = req.query._limit;
    const page = req.query._page;
    query = query.skip(pageSize * (page - 1)).limit(pageSize);
  }

  const totalCount = await totalCountQuery.count({}).exec();
  // console.log(totalCount);

  try {
    const doc = await query.exec(); //query model from DB
    res.set("X-Total-Count", totalCount);
    res.status(200).json(doc);
  } catch (err) {
    res.status(400).json(err);
  }
};

// get product detail by id
exports.fetchProductById = async (req, res) => {
  const { id } = req.params;
  // console.log(id);
  // console.log(product);
  try {
    const product = await Product.findById(id).exec();
    res.status(200).json(product);
  } catch (error) {
    res.status(400).json(error);
  }
};

// edit product by admin
exports.updateProduct = async (req, res) => {
  const { id } = req.params;
  const product = await Product.findByIdAndUpdate(id, req.body, { new: true });
  // console.log(product);
  try {
    // const doc = await product.save(); //saving instance to DB
    res.status(201).json(product);
  } catch (err) {
    res.status(400).json(err);
  }
};
