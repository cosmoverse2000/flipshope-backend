const mongoose = require("mongoose");
const { Schema } = mongoose;

const categorySchema = new Schema({
  value: { type: String, required: true, unique: true },
  label: { type: String, required: true, unique: true },
  checked: { type: Boolean, default: false },
});

//this is our Category model for mongo
exports.Category = mongoose.model("Category", categorySchema);
