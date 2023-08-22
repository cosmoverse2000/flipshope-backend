const { Cart } = require("../model/Cart");

//add cartItem
exports.addItemsToCart = async (req, res) => {
  const cart = new Cart(req.body); //instance created using mongoose model 'Product'

  try {
    const doc = await cart.save(); //saving instance to DB
    // console.log(doc, "add ite");
    const cartItem = await doc.populate(
      "productId",
      "title discountPercentage brand price thumbnail"
    );

    // console.log(cartItems, "add ite");
    res.status(201).json(cartItem);
  } catch (err) {
    res.status(400).json(err);
    // console.log(err, "Not OKKKKKKKKKKK");
  }
};

// get User Cart detail by id
exports.fetchCartByUserId = async (req, res) => {
  const { userId } = req.query;

  try {
    const cartItems = await Cart.find({ userId: userId })
      .populate("userId", "id")
      .populate("productId", "title discountPercentage brand price thumbnail")
      .exec();

    res.status(200).json(cartItems);
  } catch (error) {
    res.status(400).json(error);
  }
};

// update cart
exports.updateCartItems = async (req, res) => {
  const { userId } = req.params;
  const updatedCart = await Cart.findByIdAndUpdate(userId, req.body, {
    new: true,
  });

  try {
    res.status(201).json(updatedCart);
  } catch (err) {
    res.status(400).json(err);
  }
};
