const { User } = require("../model/User");

// get user profile by id
exports.fetchUserProfile = async (req, res) => {
  const { userId } = req.params;
  // console.log(id);
  // console.log(product);
  try {
    const user = await User.findById(
      userId,
      "name email id addresses orders role"
    ).exec();
    res.status(200).json(user);
  } catch (error) {
    res.status(400).json(error);
  }
};

// edit user by user
exports.updateUserProfile = async (req, res) => {
  const { userId } = req.params;
  const user = await User.findByIdAndUpdate(userId, req.body, { new: true });
  // console.log(product);
  try {
    res.status(201).json(user);
  } catch (err) {
    res.status(400).json(err);
  }
};
