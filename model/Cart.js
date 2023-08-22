const mongoose = require("mongoose");
const { Schema } = mongoose;

const cartSchema = new Schema({
  qty: { type: Number, required: true },
  productId: { type: Schema.Types.ObjectId, ref: "Product" },
  userId: { type: Schema.Types.ObjectId, ref: "User" },
});

//vitualization of _id to id
const virtual = cartSchema.virtual("id");
virtual.get(function () {
  return this._id;
});
cartSchema.set("toJSON", {
  virtuals: true,
  versionKey: false,
  transform: function (doc, ret) {
    delete ret._id;
  },
});

//this is our cart model for mongo
exports.Cart = mongoose.model("Cart", cartSchema);
