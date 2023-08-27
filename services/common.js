//HELPER FUNCTION
exports.isAuthorized = (req, res, done) => {
  if (req.user) {
    done();
  } else {
    res.send(401);
  }
};
exports.sanitizeUser = (user) => {
  return { id: user.id, role: user.role };
};
