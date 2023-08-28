const { User } = require("../model/User");
const crypto = require("crypto");
const { sanitizeUser } = require("../services/common");

const jwt = require("jsonwebtoken");
const SECRET_KEY = "SECRET";

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

        //THIS REQ.LOGIN Part is totally binded to passport nothing we creatde
        //passport gives us login func, that takes user details and
        // DO SERIALIZATION to create user SESSION
        req.login(sanitizeUser(newUser), function (err) {
          // this function will internally do passport-login as a login route would have done
          if (err) {
            res.status(400).json(err);
          }
          const token = jwt.sign(sanitizeUser(newUser), SECRET_KEY);
          // sending token as res cookie (you can see in res header- 'set-cookie') af signup su
          res
            .cookie("jwt", token, {
              expires: new Date(Date.now() + 36000000),
              httpOnly: true,
            })
            .status(201)
            .json(token); //TODO: no need to send token as res
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
  // sending token as res cookie (you can see in res header- 'set-cookie') af signup su

  res
    .cookie("jwt", req.user.token, {
      expires: new Date(Date.now() + 36000000),
      httpOnly: true,
    })
    .status(201)
    .json(req.user.token); //TODO: no need to send token as res
};
//Check Serialized User due to session created by firstlogin
exports.checkUserAccount = async (req, res) => {
  res.json(req.user);
};
