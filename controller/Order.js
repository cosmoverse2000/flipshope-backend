const { Order } = require("../model/Order");

//add a Order
exports.addToOrders = async (req, res) => {
  const order = new Order(req.body); //instance created using mongoose model 'Order'

  try {
    const doc = await order.save(); //saving instance to DB
    // const cartItemPopulated = await doc.populate(
    //   "product",
    //   "title discountPercentage brand price thumbnail"
    // );

    res.status(201).json(doc);
  } catch (err) {
    res.status(400).json(err);
    // console.log(err, "Not OKKKKKKKKKKK");
  }
};

// get User orders list detail by id
exports.fetchUserOrders = async (req, res) => {
  const userId = req.user.id;

  try {
    const userOrders = await Order.find({ user: userId });

    res.status(200).json(userOrders);
  } catch (error) {
    res.status(400).json(error);
  }
};

//get all orders list with for ADMIN only,sort, page
exports.fetchAllOrders = async (req, res) => {
  //this 'query' will just store 'find query(in mongo lang)' for 'Order' Model
  let query = Order.find({ isDeleted: { $ne: true } });
  let totalCountQuery = Order.find({ isDeleted: { $ne: true } });

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

// update order Item BY admin Only
exports.updateOrder = async (req, res) => {
  const { orderId } = req.params;

  const updatedOrder = await Order.findByIdAndUpdate(
    orderId,
    { orderStatus: req.body.orderStatus },
    {
      new: true,
    }
  ).exec();

  try {
    res.status(201).json(updatedOrder);
  } catch (err) {
    res.status(400).json(err);
  }
};

// // delete order Item
exports.deleteOrder = async (req, res) => {
  const { orderId } = req.params;

  try {
    const deletedOrder = await Order.findByIdAndDelete(orderId).exec();
    res.status(201).json(deletedOrder);
  } catch (err) {
    res.status(400).json(err);
  }
};
