const { User } = require("../model/User");

// get user profile by id
exports.fetchUserProfile = async (req, res) => {
  const userId = req.user.id;

  try {
    const user = await User.findById(
      userId,
      "name email addresses role"
    ).exec();

    //TODO: will make addresse independent of auth/users
    //     ,since  its a user profile
    res.status(200).json(user);
  } catch (error) {
    res.status(400).json(error);
  }
};

// edit user by user
exports.updateUserProfile = async (req, res) => {
  const userId = req.user.id;
  const user = await User.findByIdAndUpdate(userId, req.body, { new: true });
  // console.log(product);
  try {
    res.status(201).json({
      name: user.name,
      email: user.email,
      addresses: user.addresses,
      role: user.role,
    });
  } catch (err) {
    res.status(400).json(err);
  }
};
