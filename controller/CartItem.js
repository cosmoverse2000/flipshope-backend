const { CartItem } = require("../model/CartItem");

//add a cartItem
exports.addItemToCart = async (req, res) => {
  const userId = req.user.id;
  const cartItem = new CartItem({ ...req.body, user: userId }); //instance created using mongoose model 'Product'

  try {
    const doc = await cartItem.save(); //saving instance to DB
    const cartItemPopulated = await doc.populate(
      "product",
      "title discountPercentage brand price thumbnail"
    );

    res.status(201).json(cartItemPopulated);
  } catch (err) {
    res.status(400).json(err);
    // console.log(err, "Not OKKKKKKKKKKK");
  }
};

// get User Cart detail by id
exports.fetchCartByUserId = async (req, res) => {
  const userId = req.user.id;

  try {
    const cartItems = await CartItem.find({ user: userId })
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

  const updatedCartItem = await CartItem.findByIdAndUpdate(
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
  const deletedCartItem = await CartItem.findByIdAndDelete(cartItemId)
    .populate("product", "title discountPercentage brand price thumbnail")
    .exec();

  try {
    res.status(201).json(deletedCartItem);
  } catch (err) {
    res.status(400).json(err);
  }
};
