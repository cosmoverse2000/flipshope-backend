const { User } = require("../model/User");

//create User
exports.signupUserAccount = async (req, res) => {
  const user = new User(req.body); //instance created using mongoose model 'User'

  try {
    const doc = await user.save(); //saving instance to DB
    res.status(201).json(doc);
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
        email: user.email,
        name: user.name,
        addresses: user.addresses,
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
