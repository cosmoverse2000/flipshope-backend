const passport = require("passport");

//HELPER FUNCTION
exports.isAuthorizedJWT = () => {
  return passport.authenticate("jwt");
};
exports.sanitizeUser = (user) => {
  // console.log(user, "sanitized");
  return { id: user.id, role: user.role };
};
// jwt cookie extractor for passport jwt
exports.cookieExtractor = function (req) {
  let token = null;
  if (req && req.cookies) {
    token = req.cookies["jwt"];
  }
  return token;
};
// ...
