const { User } = require("../model/User");
const crypto = require("crypto");
const { sanitizeUser } = require("../services/common");
require("dotenv").config();

const jwt = require("jsonwebtoken");

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

        //creating token using sanitize user detail and secretKey
        const token = jwt.sign(
          sanitizeUser(newUser),
          process.env.JWT_SECRET_KEY
        );

        //THIS REQ.LOGIN Part is totally binded to passport nothing we creatde
        //passport gives us login func, that takes token and
        // DO SERIALIZATION to create user SESSION with req.user = token
        req.login(token, function (err) {
          // this function will internally do passport-login as a login route would have done
          if (err) {
            res.status(400).json(err);
          }
          //sending token as res cookie (you can see in res header- 'set-cookie') af signup su
          res
            .cookie("jwt", token, {
              expires: new Date(Date.now() + 36000000),
              httpOnly: true,
            })
            .status(201)
            .json(token);
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
  // sending token as res cookie (you can see in res header- 'set-cookie') af sign/login sucs
  res
    .cookie("jwt", req.user.token, {
      expires: new Date(Date.now() + 36000000),
      httpOnly: true,
    })
    .status(201)
    .json(req.user.token); //TODO: no need to send token as res
};

//Check Serialized User exist in backend session created on login/signup
exports.checkUserExists = async (req, res) => {
  if (req.user) {
    // here req.user = {id:"somId",role:"role" }, this is set due to passport-jwt will create
    // session on isAuthorized() after jwt verification, actully 'jwt' decoded is user
    const token = req.cookies["jwt"];
    //since frontend don't need user id or any thng,just send token return back as 'res'
    // will be used to set 'loggedInUserToken'
    // console.log(token, "cookies");
    res.status(200).json(req.user); //TODO: aftr cors put cookie token here inted of req.user
  } else {
    res.status(401);
  }
};
