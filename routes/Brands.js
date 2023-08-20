const express = require("express");
const { createBrand, fetchAllBrands } = require("../controller/Brand");

const router = express.Router();

router.post("/", createBrand).get("/", fetchAllBrands);

exports.router = router;
