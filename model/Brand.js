const mongoose = require("mongoose");
const { Schema } = mongoose;

const brandSchema = new Schema({
  value: { type: String, required: true, unique: true },
  label: { type: String, required: true, unique: true },
  checked: { type: Boolean, default: false },
});

//this is our brand model for mongo
exports.Brand = mongoose.model("Brand", brandSchema);
