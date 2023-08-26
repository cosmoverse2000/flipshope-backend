const mongoose = require("mongoose");
const { Schema } = mongoose;

const userSchema = new Schema({
  email: { type: String, required: true, unique: true },
  password: { type: String, required: true },
  role: { type: String, required: true, default: "user" },
  name: { type: String },
  addresses: { type: [Schema.Types.Mixed] },
  //profile imge url as - 'imageUrl'
});

//vitualization of _id to id
const virtual = userSchema.virtual("id");
virtual.get(function () {
  return this._id;
});
userSchema.set("toJSON", {
  virtuals: true,
  versionKey: false,
  transform: function (doc, ret) {
    delete ret._id;
  },
});

//this is our user model for mongo
exports.User = mongoose.model("User", userSchema);
