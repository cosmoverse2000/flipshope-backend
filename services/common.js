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
  //   "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjY0ZWNkNzQwNGE3NTI5YTc0YWE4NGE0MiIsInJvbGUiOiJhZG1pbiIsImlhdCI6MTY5MzMzNTA0MH0.gId-fY4lMNqjxpBkBb3LB_Chlsqr73eYYfieB62nWTk";
  token =
    "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjY0ZWFkYzU1YWY5MDhkNGM0YWY4NWZhZSIsInJvbGUiOiJ1c2VyIiwiaWF0IjoxNjkzMzM0OTA5fQ.cAPNVPjBe1ZDImeA6mBlLwTPBQ6E5A_JqrrqJI1-zJY";

  return token;
};
// ...
