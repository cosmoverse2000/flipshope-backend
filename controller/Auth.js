const { User } = require("../model/User");

//create User
exports.signupUserAccount = async (req, res) => {
  const user = new User(req.body); //instance created using mongoose model 'User'

  try {
    const newUser = await user.save(); //saving instance to DB
    res.status(201).json({
      id: newUser.id,
      role: newUser.role,
    });
  } catch (err) {
    res.status(400).json(err);
    // console.log(err, "Not OKKKKKKKKKKK");
  }
};

//login User
exports.loginUserAccount = async (req, res) => {
  try {
    const user = await User.findOne({ email: req.body.email }).exec();
    if (!user) {
      res.status(404).json({ message: "• User Not found !" });
    } else if (req.body.password === user.password) {
      ///TODO: this woud be encrypted
      res.status(201).json({
        id: user.id,
        role: user.role,
      });
    } else {
      res.status(401).json({ message: "• Invalid Credentials !" });
    }
  } catch (err) {
    res.status(400).json(err);
    // console.log(err, "Not OKKKKKKKKKKK");
  }
};
