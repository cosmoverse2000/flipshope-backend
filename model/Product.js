const mongoose = require("mongoose");
const { Schema } = mongoose;

const productSchema = new Schema(
  {
    title: { type: String, required: true, unique: true },
    description: { type: String, required: true },
    price: {
      type: Number,
      min: [1, "wrong min price"],
      max: [1000000, "wrong max price"],
      required: true,
    },
    discountPercentage: {
      type: Number,
      min: [0, "wrong min discount"],
      max: [99, "wrong max discount"],
      required: true,
    },
    rating: {
      type: Number,
      min: [1, "wrong min rating"],
      max: [5, "wrong max rating"],
      default: 1,
    },
    stock: { type: Number, min: [0, "wrong min stock"], default: 1 },
    brand: { type: String, required: true },
    category: { type: String, required: true },
    thumbnail: { type: String, required: true },
    images: { type: [String], required: true },
    isDeleted: { type: Boolean, default: false },
  },
  { timestamps: true }
);

//vitualization of _id to id
const virtual = productSchema.virtual("id");
virtual.get(function () {
  return this._id;
});
productSchema.set("toJSON", {
  virtuals: true,
  versionKey: false,
  transform: function (doc, ret) {
    delete ret._id;
  },
});

//this is our product model for mongo
exports.Product = mongoose.model("Product", productSchema);
