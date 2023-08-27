const passport = require("passport");

//HELPER FUNCTION
exports.isAuthorizedJWT = () => {
  return passport.authenticate("jwt");
};
exports.sanitizeUser = (user) => {
  // console.log(user, "sanitized");
  return { id: user.id, role: user.role };
};
