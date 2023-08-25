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

// get User Cart detail by id
exports.fetchCartByUserId = async (req, res) => {
  const { userId } = req.query;

  try {
    const cartItems = await Order.find({ user: userId })
      .populate("product", "title discountPercentage brand price thumbnail")
      .exec();

    res.status(200).json(cartItems);
  } catch (error) {
    res.status(400).json(error);
  }
};

// update cart Item
exports.updateCartItem = async (req, res) => {
  const { cartItemId } = req.params;

  const updatedCartItem = await Order.findByIdAndUpdate(
    cartItemId,
    { qty: +req.body.qty },
    {
      new: true,
    }
  )
    .populate("product", "title discountPercentage brand price thumbnail")
    .exec();

  try {
    res.status(201).json(updatedCartItem);
  } catch (err) {
    res.status(400).json(err);
  }
};

// // delete cart Item
exports.deleteCartItem = async (req, res) => {
  const { cartItemId } = req.params;
  const deletedCartItem = await Order.findByIdAndDelete(cartItemId)
    .populate("product", "title discountPercentage brand price thumbnail")
    .exec();

  try {
    res.status(201).json(deletedCartItem);
  } catch (err) {
    res.status(400).json(err);
  }
};
