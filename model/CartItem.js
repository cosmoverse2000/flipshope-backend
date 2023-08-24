const mongoose = require("mongoose");
const { Schema } = mongoose;

const cartItemSchema = new Schema({
  qty: { type: Number, required: true },
  product: { type: Schema.Types.ObjectId, ref: "Product" },
  user: { type: Schema.Types.ObjectId, ref: "User" },
});

//vitualization of _id to id
const virtual = cartItemSchema.virtual("id");
virtual.get(function () {
  return this._id;
});
cartItemSchema.set("toJSON", {
  virtuals: true,
  versionKey: false,
  transform: function (doc, ret) {
    delete ret._id;
  },
});

//this is our cart model for mongo
exports.CartItem = mongoose.model("CartItem", cartItemSchema);
