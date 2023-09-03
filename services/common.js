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
  //TODO: replace this token dynamical tepr to avoid cors
  // admin-user-incture
  // token =
  //   "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjY0ZWNhYmQ4NmQxNDgyMTYyYjc2ZTVjYSIsInJvbGUiOiJhZG1pbiIsImlhdCI6MTY5MzI0MDU5MX0.arxwmzdTnmv2YyZHMFDYgLer6OkeJ933L2tvOnrPraM";
  // token =
  //   "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjY0ZWNhYmI5NmQxNDgyMTYyYjc2ZTVjOCIsInJvbGUiOiJ1c2VyIiwiaWF0IjoxNjkzMjQxNzYzfQ.uhrnJYXgFBNPZTJk6zrTzjC_ldT1GEc2_TLt110BZ3E";
  //avita-admin
  // token =
  //   "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjY0ZWNhYmQ4NmQxNDgyMTYyYjc2ZTVjYSIsInJvbGUiOiJhZG1pbiIsImlhdCI6MTY5Mzc2MTcyNX0.XySPcaMg1UwDtoZpGHDOuEIFpB8j7kkeQ3quFCILhEs";
  token =
    "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjY0ZWNhYmI5NmQxNDgyMTYyYjc2ZTVjOCIsInJvbGUiOiJ1c2VyIiwiaWF0IjoxNjkzNzYyMjI4fQ.wppzvF7fILrIi1s2Jcd38LZlivQqH3sKsRZ5GAjyZBA";

  return token;
};
// ...
