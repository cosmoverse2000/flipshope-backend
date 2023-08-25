const mongoose = require("mongoose");
const { Schema } = mongoose;

const orderSchema = new Schema(
  {
    user: { type: Schema.Types.ObjectId, ref: "User", required: true },
    orderStatus: { type: String, default: "Pending" },
    orderedItems: { type: [Schema.Types.Mixed], required: true },
    totalItems: { type: Number },
    totalPrice: { type: Number },
    //todo: enum mongo type for select-payments
    selectPayment: { type: String, required: true },
    address: { type: Schema.Types.Mixed, required: true },
    // orderDateTime: { type: Date, default: Date.now },
  },
  { timestamps: true }
);

//vitualization of _id to id
const virtual = orderSchema.virtual("id");
virtual.get(function () {
  return this._id;
});
orderSchema.set("toJSON", {
  virtuals: true,
  versionKey: false,
  transform: function (doc, ret) {
    delete ret._id;
  },
});

//this is our order model for mongo
exports.Order = mongoose.model("Order", orderSchema);
