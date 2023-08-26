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
  res.json(req.user);
};
//Check Serialized User due to session created by firstlogin
exports.checkUserAccount = async (req, res) => {
  res.json(req.user);
};
