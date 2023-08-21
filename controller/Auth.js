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
