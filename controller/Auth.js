const { User } = require("../model/User");
const crypto = require("crypto");

//create User
exports.signupUserAccount = async (req, res) => {
  try {
    //using node crypto for hashing
    var salt = crypto.randomBytes(16);
    crypto.pbkdf2(
      req.body.password,
      salt,
      310000,
      32,
      "sha256",
      async function (err, hashedPassword) {
        const user = new User({ ...req.body, password: hashedPassword, salt });
        //instance created using mongoose model 'User'

        const newUser = await user.save(); //saving instance to DB

        res.status(201).json({
          id: newUser.id,
          role: newUser.role,
        });
      }
    );
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
