/* 2022-07-10 22:52:50 [60 ms] */ 
db("wikiDb").createCollection("articles");
/* 2023-05-19 01:19:59 [24 ms] */ 
db('wikiDb').collection('articles').find({}).limit(100).toArray();
/* 2023-05-19 17:34:17 [5 ms] */ 
db('wikiDb').collection('articles').find({}).limit(100).toArray();
/* 2023-05-19 17:36:05 [4 ms] */ 
db('userDB').collection('users').find({}).limit(100).toArray();
/* 2023-08-20 18:28:29 [6 ms] */ 
db('flipshopeDB').collection('products').insertOne( {
      "id": 13,
      "title": "Fog Scent Xpressio Perfume",
      "description": "Product details of Best Fog Scent Xpressio Perfume 100ml For Men cool long lasting perfumes for Men",
      "price": 13,
      "discountPercentage": 8.14,
      "rating": 4.59,
      "stock": 61,
      "brand": "Fog Scent Xpressio",
      "category": "fragrances",
      "thumbnail": "https://i.dummyjson.com/data/products/13/thumbnail.webp",
      "images": [
        "https://i.dummyjson.com/data/products/13/1.jpg",
        "https://i.dummyjson.com/data/products/13/2.png",
        "https://i.dummyjson.com/data/products/13/3.jpg",
        "https://i.dummyjson.com/data/products/13/4.jpg",
        "https://i.dummyjson.com/data/products/13/thumbnail.webp"
      ]
    });
/* 2023-08-20 18:29:43 [20 ms] */ 
db('flipshopeDB').collection("products").updateOne({_id:ObjectID('64e20d563233dfef0f76ff41')},{ $set:{"isDeleted":false}})
;
/* 2023-08-20 18:29:51 [2 ms] */ 
db('flipshopeDB').collection("products").updateOne({_id:ObjectID('64e20df53233dfef0f76ff42')},{ $set:{"isDeleted":false}})
;
/* 2023-08-20 18:29:55 [3 ms] */ 
db('flipshopeDB').collection("products").updateOne({_id:ObjectID('64e20d563233dfef0f76ff41')},{ $set:{"__v":0}})
;
/* 2023-08-20 18:29:57 [2 ms] */ 
db('flipshopeDB').collection("products").updateOne({_id:ObjectID('64e20df53233dfef0f76ff42')},{ $set:{"__v":0}})
;
/* 2023-08-20 18:36:20 [10 ms] */ 
db('flipshopeDB').collection('products').insertMany([ {
      "id": 14,
      "title": "Non-Alcoholic Concentrated Perfume Oil",
      "description": "Original Al Munakh® by Mahal Al Musk | Our Impression of Climate | 6ml Non-Alcoholic Concentrated Perfume Oil",
      "price": 120,
      "discountPercentage": 15.6,
      "rating": 4.21,
      "stock": 114,
      "brand": "Al Munakh",
      "category": "fragrances",
      "thumbnail": "https://i.dummyjson.com/data/products/14/thumbnail.jpg",
      "images": [
        "https://i.dummyjson.com/data/products/14/1.jpg",
        "https://i.dummyjson.com/data/products/14/2.jpg",
        "https://i.dummyjson.com/data/products/14/3.jpg",
        "https://i.dummyjson.com/data/products/14/thumbnail.jpg"
      ]
    },
    {
      "id": 15,
      "title": "Eau De Perfume Spray",
      "description": "Genuine  Al-Rehab spray perfume from UAE/Saudi Arabia/Yemen High Quality",
      "price": 30,
      "discountPercentage": 10.99,
      "rating": 4.7,
      "stock": 105,
      "brand": "Lord - Al-Rehab",
      "category": "fragrances",
      "thumbnail": "https://i.dummyjson.com/data/products/15/thumbnail.jpg",
      "images": [
        "https://i.dummyjson.com/data/products/15/1.jpg",
        "https://i.dummyjson.com/data/products/15/2.jpg",
        "https://i.dummyjson.com/data/products/15/3.jpg",
        "https://i.dummyjson.com/data/products/15/4.jpg",
        "https://i.dummyjson.com/data/products/15/thumbnail.jpg"
      ]
    },
    {
      "id": 16,
      "title": "Hyaluronic Acid Serum",
      "description": "L'OrÃ©al Paris introduces Hyaluron Expert Replumping Serum formulated with 1.5% Hyaluronic Acid",
      "price": 19,
      "discountPercentage": 13.31,
      "rating": 4.83,
      "stock": 110,
      "brand": "L'Oreal Paris",
      "category": "skincare",
      "thumbnail": "https://i.dummyjson.com/data/products/16/thumbnail.jpg",
      "images": [
        "https://i.dummyjson.com/data/products/16/1.png",
        "https://i.dummyjson.com/data/products/16/2.webp",
        "https://i.dummyjson.com/data/products/16/3.jpg",
        "https://i.dummyjson.com/data/products/16/4.jpg",
        "https://i.dummyjson.com/data/products/16/thumbnail.jpg"
      ]
    },
    {
      "id": 17,
      "title": "Tree Oil 30ml",
      "description": "Tea tree oil contains a number of compounds, including terpinen-4-ol, that have been shown to kill certain bacteria,",
      "price": 12,
      "discountPercentage": 4.09,
      "rating": 4.52,
      "stock": 78,
      "brand": "Hemani Tea",
      "category": "skincare",
      "thumbnail": "https://i.dummyjson.com/data/products/17/thumbnail.jpg",
      "images": [
        "https://i.dummyjson.com/data/products/17/1.jpg",
        "https://i.dummyjson.com/data/products/17/2.jpg",
        "https://i.dummyjson.com/data/products/17/3.jpg",
        "https://i.dummyjson.com/data/products/17/thumbnail.jpg"
      ]
    }]);
/* 2023-08-20 18:57:56 [25 ms] */ 
db('flipshopeDB').collection("products").deleteMany({_id:{$in:[ObjectID('64e1b2c0459d7f788f8cb3ec'),ObjectID('64e1c01b8ee9bdb5de06cb3c'),ObjectID('64e1c0388ee9bdb5de06cb3e'),ObjectID('64e1c04a8ee9bdb5de06cb40'),ObjectID('64e1c05f8ee9bdb5de06cb42'),ObjectID('64e20d563233dfef0f76ff41'),ObjectID('64e20df53233dfef0f76ff42'),ObjectID('64e20fcc3233dfef0f76ff43'),ObjectID('64e20fcc3233dfef0f76ff44'),ObjectID('64e20fcc3233dfef0f76ff45'),ObjectID('64e20fcc3233dfef0f76ff46')]}});
/* 2023-08-20 18:58:17 [53 ms] */ 
db('flipshopeDB').collection('products').insertMany([
    {
        "title": "iPhone 9",
        "description": "An apple mobile which is nothing like apple",
        "price": 549,
        "discountPercentage": 12.96,
        "rating": 4.69,
        "stock": 94,
        "brand": "Apple",
        "category": "smartphones",
        "thumbnail": "https://i.dummyjson.com/data/products/1/thumbnail.jpg",
        "images": [
            "https://i.dummyjson.com/data/products/1/1.jpg",
            "https://i.dummyjson.com/data/products/1/2.jpg",
            "https://i.dummyjson.com/data/products/1/3.jpg",
            "https://i.dummyjson.com/data/products/1/4.jpg",
            "https://i.dummyjson.com/data/products/1/thumbnail.jpg"
        ],
        "isDeleted": false,
        "__v": 0
    },
    {
        "title": "iPhone X",
        "description": "SIM-Free, Model A19211 6.5-inch Super Retina HD display with OLED technology A12 Bionic chip with ...",
        "price": 1000,
        "discountPercentage": 17.94,
        "rating": 4.44,
        "stock": 34,
        "brand": "Apple",
        "category": "smartphones",
        "thumbnail": "https://i.dummyjson.com/data/products/2/thumbnail.jpg",
        "images": [
            "https://i.dummyjson.com/data/products/2/1.jpg",
            "https://i.dummyjson.com/data/products/2/2.jpg",
            "https://i.dummyjson.com/data/products/2/3.jpg",
            "https://i.dummyjson.com/data/products/2/thumbnail.jpg"
        ],
        "isDeleted": false,
        "__v": 0
    },
    {
        "title": "Samsung Universe 9",
        "description": "Samsung's new variant which goes beyond Galaxy to the Universe",
        "price": 1249,
        "discountPercentage": 15.46,
        "rating": 4.09,
        "stock": 36,
        "brand": "Samsung",
        "category": "smartphones",
        "thumbnail": "https://i.dummyjson.com/data/products/3/thumbnail.jpg",
        "images": [
            "https://i.dummyjson.com/data/products/3/1.jpg"
        ],
        "isDeleted": false,
        "__v": 0
    },
    {
        "title": "OPPOF19",
        "description": "OPPO F19 is officially announced on April 2021.",
        "price": 280,
        "discountPercentage": 17.91,
        "rating": 4.3,
        "stock": 123,
        "brand": "OPPO",
        "category": "smartphones",
        "thumbnail": "https://i.dummyjson.com/data/products/4/thumbnail.jpg",
        "images": [
            "https://i.dummyjson.com/data/products/4/1.jpg",
            "https://i.dummyjson.com/data/products/4/2.jpg",
            "https://i.dummyjson.com/data/products/4/3.jpg",
            "https://i.dummyjson.com/data/products/4/4.jpg",
            "https://i.dummyjson.com/data/products/4/thumbnail.jpg"
        ],
        "isDeleted": false,
        "__v": 0
    },
    {
        "title": "Huawei P30",
        "description": "Huawei’s re-badged P30 Pro New Edition was officially unveiled yesterday in Germany and now the device has made its way to the UK.",
        "price": 499,
        "discountPercentage": 10.58,
        "rating": 4.09,
        "stock": 32,
        "brand": "Huawei",
        "category": "smartphones",
        "thumbnail": "https://i.dummyjson.com/data/products/5/thumbnail.jpg",
        "images": [
            "https://i.dummyjson.com/data/products/5/1.jpg",
            "https://i.dummyjson.com/data/products/5/2.jpg",
            "https://i.dummyjson.com/data/products/5/3.jpg"
        ],
        "isDeleted": false,
        "__v": 0
    },
    {
        "title": "MacBook Pro",
        "description": "MacBook Pro 2021 with mini-LED display may launch between September, November",
        "price": 1749,
        "discountPercentage": 11.02,
        "rating": 4.57,
        "stock": 83,
        "brand": "Apple",
        "category": "laptops",
        "thumbnail": "https://i.dummyjson.com/data/products/6/thumbnail.png",
        "images": [
            "https://i.dummyjson.com/data/products/6/1.png",
            "https://i.dummyjson.com/data/products/6/2.jpg",
            "https://i.dummyjson.com/data/products/6/3.png",
            "https://i.dummyjson.com/data/products/6/4.jpg"
        ],
        "isDeleted": false,
        "__v": 0
    },
    {
        "title": "Samsung Galaxy Book",
        "description": "Samsung Galaxy Book S (2020) Laptop With Intel Lakefield Chip, 8GB of RAM Launched",
        "price": 1499,
        "discountPercentage": 4.15,
        "rating": 4.25,
        "stock": 50,
        "brand": "Samsung",
        "category": "laptops",
        "thumbnail": "https://i.dummyjson.com/data/products/7/thumbnail.jpg",
        "images": [
            "https://i.dummyjson.com/data/products/7/1.jpg",
            "https://i.dummyjson.com/data/products/7/2.jpg",
            "https://i.dummyjson.com/data/products/7/3.jpg",
            "https://i.dummyjson.com/data/products/7/thumbnail.jpg"
        ],
        "isDeleted": false,
        "__v": 0
    },
    {
        "title": "Microsoft Surface Laptop 4",
        "description": "Style and speed. Stand out on HD video calls backed by Studio Mics. Capture ideas on the vibrant touchscreen.",
        "price": 1499,
        "discountPercentage": 10.23,
        "rating": 4.43,
        "stock": 68,
        "brand": "Microsoft Surface",
        "category": "laptops",
        "thumbnail": "https://i.dummyjson.com/data/products/8/thumbnail.jpg",
        "images": [
            "https://i.dummyjson.com/data/products/8/1.jpg",
            "https://i.dummyjson.com/data/products/8/2.jpg",
            "https://i.dummyjson.com/data/products/8/3.jpg",
            "https://i.dummyjson.com/data/products/8/4.jpg",
            "https://i.dummyjson.com/data/products/8/thumbnail.jpg"
        ],
        "isDeleted": false,
        "__v": 0
    },
    {
        "title": "Infinix INBOOK",
        "description": "Infinix Inbook X1 Ci3 10th 8GB 256GB 14 Win10 Grey – 1 Year Warranty",
        "price": 1599,
        "discountPercentage": 11.83,
        "rating": 4.54,
        "stock": 96,
        "brand": "Infinix",
        "category": "laptops",
        "thumbnail": "https://i.dummyjson.com/data/products/9/thumbnail.jpg",
        "images": [
            "https://i.dummyjson.com/data/products/9/1.jpg",
            "https://i.dummyjson.com/data/products/9/2.png",
            "https://i.dummyjson.com/data/products/9/3.png",
            "https://i.dummyjson.com/data/products/9/4.jpg"
        ],
        "isDeleted": false,
        "__v": 0
    },
    {
        "title": "HP Pavilion 15-DK1056WM",
        "description": "HP Pavilion 15-DK1056WM Gaming Laptop 10th Gen Core i5, 8GB, 256GB SSD, GTX 1650 4GB, Windows 10",
        "price": 999,
        "discountPercentage": 6.18,
        "rating": 4.43,
        "stock": 89,
        "brand": "HP Pavilion",
        "category": "laptops",
        "thumbnail": "https://i.dummyjson.com/data/products/10/thumbnail.jpeg",
        "images": [
            "https://i.dummyjson.com/data/products/10/1.jpg",
            "https://i.dummyjson.com/data/products/10/2.jpg",
            "https://i.dummyjson.com/data/products/10/3.jpg",
            "https://i.dummyjson.com/data/products/10/thumbnail.jpeg"
        ],
        "isDeleted": false,
        "__v": 0
    },
    {
        "title": "perfume Oil",
        "description": "Mega Discount, Impression of Acqua Di Gio by GiorgioArmani concentrated attar perfume Oil",
        "price": 13,
        "discountPercentage": 8.4,
        "rating": 4.26,
        "stock": 65,
        "brand": "Impression of Acqua Di Gio",
        "category": "fragrances",
        "thumbnail": "https://i.dummyjson.com/data/products/11/thumbnail.jpg",
        "images": [
            "https://i.dummyjson.com/data/products/11/1.jpg",
            "https://i.dummyjson.com/data/products/11/2.jpg",
            "https://i.dummyjson.com/data/products/11/3.jpg",
            "https://i.dummyjson.com/data/products/11/thumbnail.jpg"
        ],
        "isDeleted": false,
        "__v": 0
    },
    {
        "title": "Brown Perfume",
        "description": "Royal_Mirage Sport Brown Perfume for Men & Women - 120ml",
        "price": 40,
        "discountPercentage": 15.66,
        "rating": 4,
        "stock": 52,
        "brand": "Royal_Mirage",
        "category": "fragrances",
        "thumbnail": "https://i.dummyjson.com/data/products/12/thumbnail.jpg",
        "images": [
            "https://i.dummyjson.com/data/products/12/1.jpg",
            "https://i.dummyjson.com/data/products/12/2.jpg",
            "https://i.dummyjson.com/data/products/12/3.png",
            "https://i.dummyjson.com/data/products/12/4.jpg",
            "https://i.dummyjson.com/data/products/12/thumbnail.jpg"
        ],
        "isDeleted": false,
        "__v": 0
    },
    {
        "title": "Fog Scent Xpressio Perfume",
        "description": "Product details of Best Fog Scent Xpressio Perfume 100ml For Men cool long lasting perfumes for Men",
        "price": 13,
        "discountPercentage": 8.14,
        "rating": 4.59,
        "stock": 61,
        "brand": "Fog Scent Xpressio",
        "category": "fragrances",
        "thumbnail": "https://i.dummyjson.com/data/products/13/thumbnail.webp",
        "images": [
            "https://i.dummyjson.com/data/products/13/1.jpg",
            "https://i.dummyjson.com/data/products/13/2.png",
            "https://i.dummyjson.com/data/products/13/3.jpg",
            "https://i.dummyjson.com/data/products/13/4.jpg",
            "https://i.dummyjson.com/data/products/13/thumbnail.webp"
        ],
        "isDeleted": false,
        "__v": 0
    },
    {
        "title": "Non-Alcoholic Concentrated Perfume Oil",
        "description": "Original Al Munakh® by Mahal Al Musk | Our Impression of Climate | 6ml Non-Alcoholic Concentrated Perfume Oil",
        "price": 120,
        "discountPercentage": 15.6,
        "rating": 4.21,
        "stock": 114,
        "brand": "Al Munakh",
        "category": "fragrances",
        "thumbnail": "https://i.dummyjson.com/data/products/14/thumbnail.jpg",
        "images": [
            "https://i.dummyjson.com/data/products/14/1.jpg",
            "https://i.dummyjson.com/data/products/14/2.jpg",
            "https://i.dummyjson.com/data/products/14/3.jpg",
            "https://i.dummyjson.com/data/products/14/thumbnail.jpg"
        ],
        "isDeleted": false,
        "__v": 0
    },
    {
        "title": "Eau De Perfume Spray",
        "description": "Genuine  Al-Rehab spray perfume from UAE/Saudi Arabia/Yemen High Quality",
        "price": 30,
        "discountPercentage": 10.99,
        "rating": 4.7,
        "stock": 105,
        "brand": "Lord - Al-Rehab",
        "category": "fragrances",
        "thumbnail": "https://i.dummyjson.com/data/products/15/thumbnail.jpg",
        "images": [
            "https://i.dummyjson.com/data/products/15/1.jpg",
            "https://i.dummyjson.com/data/products/15/2.jpg",
            "https://i.dummyjson.com/data/products/15/3.jpg",
            "https://i.dummyjson.com/data/products/15/4.jpg",
            "https://i.dummyjson.com/data/products/15/thumbnail.jpg"
        ],
        "isDeleted": false,
        "__v": 0
    },
    {
        "title": "Hyaluronic Acid Serum",
        "description": "L'OrÃ©al Paris introduces Hyaluron Expert Replumping Serum formulated with 1.5% Hyaluronic Acid",
        "price": 19,
        "discountPercentage": 13.31,
        "rating": 4.83,
        "stock": 110,
        "brand": "L'Oreal Paris",
        "category": "skincare",
        "thumbnail": "https://i.dummyjson.com/data/products/16/thumbnail.jpg",
        "images": [
            "https://i.dummyjson.com/data/products/16/1.png",
            "https://i.dummyjson.com/data/products/16/2.webp",
            "https://i.dummyjson.com/data/products/16/3.jpg",
            "https://i.dummyjson.com/data/products/16/4.jpg",
            "https://i.dummyjson.com/data/products/16/thumbnail.jpg"
        ],
        "isDeleted": false,
        "__v": 0
    },
    {
        "title": "Tree Oil 30ml",
        "description": "Tea tree oil contains a number of compounds, including terpinen-4-ol, that have been shown to kill certain bacteria,",
        "price": 12,
        "discountPercentage": 4.09,
        "rating": 4.52,
        "stock": 78,
        "brand": "Hemani Tea",
        "category": "skincare",
        "thumbnail": "https://i.dummyjson.com/data/products/17/thumbnail.jpg",
        "images": [
            "https://i.dummyjson.com/data/products/17/1.jpg",
            "https://i.dummyjson.com/data/products/17/2.jpg",
            "https://i.dummyjson.com/data/products/17/3.jpg",
            "https://i.dummyjson.com/data/products/17/thumbnail.jpg"
        ],
        "isDeleted": false,
        "__v": 0
    },
    {
        "title": "Oil Free Moisturizer 100ml",
        "description": "Dermive Oil Free Moisturizer with SPF 20 is specifically formulated with ceramides, hyaluronic acid & sunscreen.",
        "price": 40,
        "discountPercentage": 13.1,
        "rating": 4.56,
        "stock": 88,
        "brand": "Dermive",
        "category": "skincare",
        "thumbnail": "https://i.dummyjson.com/data/products/18/thumbnail.jpg",
        "images": [
            "https://i.dummyjson.com/data/products/18/1.jpg",
            "https://i.dummyjson.com/data/products/18/2.jpg",
            "https://i.dummyjson.com/data/products/18/3.jpg",
            "https://i.dummyjson.com/data/products/18/4.jpg",
            "https://i.dummyjson.com/data/products/18/thumbnail.jpg"
        ],
        "isDeleted": false,
        "__v": 0
    },
    {
        "title": "Skin Beauty Serum.",
        "description": "Product name: rorec collagen hyaluronic acid white face serum riceNet weight: 15 m",
        "price": 46,
        "discountPercentage": 10.68,
        "rating": 4.42,
        "stock": 54,
        "brand": "ROREC White Rice",
        "category": "skincare",
        "thumbnail": "https://i.dummyjson.com/data/products/19/thumbnail.jpg",
        "images": [
            "https://i.dummyjson.com/data/products/19/1.jpg",
            "https://i.dummyjson.com/data/products/19/2.jpg",
            "https://i.dummyjson.com/data/products/19/3.png",
            "https://i.dummyjson.com/data/products/19/thumbnail.jpg"
        ],
        "isDeleted": false,
        "__v": 0
    },
    {
        "title": "Freckle Treatment Cream- 15gm",
        "description": "Fair & Clear is Pakistan's only pure Freckle cream which helpsfade Freckles, Darkspots and pigments. Mercury level is 0%, so there are no side effects.",
        "price": 70,
        "discountPercentage": 16.99,
        "rating": 4.06,
        "stock": 140,
        "brand": "Fair & Clear",
        "category": "skincare",
        "thumbnail": "https://i.dummyjson.com/data/products/20/thumbnail.jpg",
        "images": [
            "https://i.dummyjson.com/data/products/20/1.jpg",
            "https://i.dummyjson.com/data/products/20/2.jpg",
            "https://i.dummyjson.com/data/products/20/3.jpg",
            "https://i.dummyjson.com/data/products/20/4.jpg",
            "https://i.dummyjson.com/data/products/20/thumbnail.jpg"
        ],
        "isDeleted": false,
        "__v": 0
    },
    {
        "title": "- Daal Masoor 500 grams",
        "description": "Fine quality Branded Product Keep in a cool and dry place",
        "price": 20,
        "discountPercentage": 4.81,
        "rating": 4.44,
        "stock": 133,
        "brand": "Saaf & Khaas",
        "category": "groceries",
        "thumbnail": "https://i.dummyjson.com/data/products/21/thumbnail.png",
        "images": [
            "https://i.dummyjson.com/data/products/21/1.png",
            "https://i.dummyjson.com/data/products/21/2.jpg",
            "https://i.dummyjson.com/data/products/21/3.jpg"
        ],
        "isDeleted": false,
        "__v": 0
    },
    {
        "title": "Elbow Macaroni - 400 gm",
        "description": "Product details of Bake Parlor Big Elbow Macaroni - 400 gm",
        "price": 14,
        "discountPercentage": 15.58,
        "rating": 4.57,
        "stock": 146,
        "brand": "Bake Parlor Big",
        "category": "groceries",
        "thumbnail": "https://i.dummyjson.com/data/products/22/thumbnail.jpg",
        "images": [
            "https://i.dummyjson.com/data/products/22/1.jpg",
            "https://i.dummyjson.com/data/products/22/2.jpg",
            "https://i.dummyjson.com/data/products/22/3.jpg"
        ],
        "isDeleted": false,
        "__v": 0
    },
    {
        "title": "Orange Essence Food Flavou",
        "description": "Specifications of Orange Essence Food Flavour For Cakes and Baking Food Item",
        "price": 14,
        "discountPercentage": 8.04,
        "rating": 4.85,
        "stock": 26,
        "brand": "Baking Food Items",
        "category": "groceries",
        "thumbnail": "https://i.dummyjson.com/data/products/23/thumbnail.jpg",
        "images": [
            "https://i.dummyjson.com/data/products/23/1.jpg",
            "https://i.dummyjson.com/data/products/23/2.jpg",
            "https://i.dummyjson.com/data/products/23/3.jpg",
            "https://i.dummyjson.com/data/products/23/4.jpg",
            "https://i.dummyjson.com/data/products/23/thumbnail.jpg"
        ],
        "isDeleted": false,
        "__v": 0
    },
    {
        "title": "cereals muesli fruit nuts",
        "description": "original fauji cereal muesli 250gm box pack original fauji cereals muesli fruit nuts flakes breakfast cereal break fast faujicereals cerels cerel foji fouji",
        "price": 46,
        "discountPercentage": 16.8,
        "rating": 4.94,
        "stock": 113,
        "brand": "fauji",
        "category": "groceries",
        "thumbnail": "https://i.dummyjson.com/data/products/24/thumbnail.jpg",
        "images": [
            "https://i.dummyjson.com/data/products/24/1.jpg",
            "https://i.dummyjson.com/data/products/24/2.jpg",
            "https://i.dummyjson.com/data/products/24/3.jpg",
            "https://i.dummyjson.com/data/products/24/4.jpg",
            "https://i.dummyjson.com/data/products/24/thumbnail.jpg"
        ],
        "isDeleted": false,
        "__v": 0
    },
    {
        "title": "Gulab Powder 50 Gram",
        "description": "Dry Rose Flower Powder Gulab Powder 50 Gram • Treats Wounds",
        "price": 70,
        "discountPercentage": 13.58,
        "rating": 4.87,
        "stock": 47,
        "brand": "Dry Rose",
        "category": "groceries",
        "thumbnail": "https://i.dummyjson.com/data/products/25/thumbnail.jpg",
        "images": [
            "https://i.dummyjson.com/data/products/25/1.png",
            "https://i.dummyjson.com/data/products/25/2.jpg",
            "https://i.dummyjson.com/data/products/25/3.png",
            "https://i.dummyjson.com/data/products/25/4.jpg",
            "https://i.dummyjson.com/data/products/25/thumbnail.jpg"
        ],
        "isDeleted": false,
        "__v": 0
    },
    {
        "title": "Plant Hanger For Home",
        "description": "Boho Decor Plant Hanger For Home Wall Decoration Macrame Wall Hanging Shelf",
        "price": 41,
        "discountPercentage": 17.86,
        "rating": 4.08,
        "stock": 131,
        "brand": "Boho Decor",
        "category": "home-decoration",
        "thumbnail": "https://i.dummyjson.com/data/products/26/thumbnail.jpg",
        "images": [
            "https://i.dummyjson.com/data/products/26/1.jpg",
            "https://i.dummyjson.com/data/products/26/2.jpg",
            "https://i.dummyjson.com/data/products/26/3.jpg",
            "https://i.dummyjson.com/data/products/26/4.jpg",
            "https://i.dummyjson.com/data/products/26/5.jpg",
            "https://i.dummyjson.com/data/products/26/thumbnail.jpg"
        ],
        "isDeleted": false,
        "__v": 0
    },
    {
        "title": "Flying Wooden Bird",
        "description": "Package Include 6 Birds with Adhesive Tape Shape: 3D Shaped Wooden Birds Material: Wooden MDF, Laminated 3.5mm",
        "price": 51,
        "discountPercentage": 15.58,
        "rating": 4.41,
        "stock": 17,
        "brand": "Flying Wooden",
        "category": "home-decoration",
        "thumbnail": "https://i.dummyjson.com/data/products/27/thumbnail.webp",
        "images": [
            "https://i.dummyjson.com/data/products/27/1.jpg",
            "https://i.dummyjson.com/data/products/27/2.jpg",
            "https://i.dummyjson.com/data/products/27/3.jpg",
            "https://i.dummyjson.com/data/products/27/4.jpg",
            "https://i.dummyjson.com/data/products/27/thumbnail.webp"
        ],
        "isDeleted": false,
        "__v": 0
    },
    {
        "title": "3D Embellishment Art Lamp",
        "description": "3D led lamp sticker Wall sticker 3d wall art light on/off button  cell operated (included)",
        "price": 20,
        "discountPercentage": 16.49,
        "rating": 4.82,
        "stock": 54,
        "brand": "LED Lights",
        "category": "home-decoration",
        "thumbnail": "https://i.dummyjson.com/data/products/28/thumbnail.jpg",
        "images": [
            "https://i.dummyjson.com/data/products/28/1.jpg",
            "https://i.dummyjson.com/data/products/28/2.jpg",
            "https://i.dummyjson.com/data/products/28/3.png",
            "https://i.dummyjson.com/data/products/28/4.jpg",
            "https://i.dummyjson.com/data/products/28/thumbnail.jpg"
        ],
        "isDeleted": false,
        "__v": 0
    },
    {
        "title": "Handcraft Chinese style",
        "description": "Handcraft Chinese style art luxury palace hotel villa mansion home decor ceramic vase with brass fruit plate",
        "price": 60,
        "discountPercentage": 15.34,
        "rating": 4.44,
        "stock": 7,
        "brand": "luxury palace",
        "category": "home-decoration",
        "thumbnail": "https://i.dummyjson.com/data/products/29/thumbnail.webp",
        "images": [
            "https://i.dummyjson.com/data/products/29/1.jpg",
            "https://i.dummyjson.com/data/products/29/2.jpg",
            "https://i.dummyjson.com/data/products/29/3.webp",
            "https://i.dummyjson.com/data/products/29/4.webp",
            "https://i.dummyjson.com/data/products/29/thumbnail.webp"
        ],
        "isDeleted": false,
        "__v": 0
    },
    {
        "title": "Key Holder",
        "description": "Attractive DesignMetallic materialFour key hooksReliable & DurablePremium Quality",
        "price": 30,
        "discountPercentage": 2.92,
        "rating": 4.92,
        "stock": 54,
        "brand": "Golden",
        "category": "home-decoration",
        "thumbnail": "https://i.dummyjson.com/data/products/30/thumbnail.jpg",
        "images": [
            "https://i.dummyjson.com/data/products/30/1.jpg",
            "https://i.dummyjson.com/data/products/30/2.jpg",
            "https://i.dummyjson.com/data/products/30/3.jpg",
            "https://i.dummyjson.com/data/products/30/thumbnail.jpg"
        ],
        "isDeleted": false,
        "__v": 0
    },
    {
        "title": "Mornadi Velvet Bed",
        "description": "Mornadi Velvet Bed Base with Headboard Slats Support Classic Style Bedroom Furniture Bed Set",
        "price": 40,
        "discountPercentage": 17,
        "rating": 4.16,
        "stock": 140,
        "brand": "Furniture Bed Set",
        "category": "furniture",
        "thumbnail": "https://i.dummyjson.com/data/products/31/thumbnail.jpg",
        "images": [
            "https://i.dummyjson.com/data/products/31/1.jpg",
            "https://i.dummyjson.com/data/products/31/2.jpg",
            "https://i.dummyjson.com/data/products/31/3.jpg",
            "https://i.dummyjson.com/data/products/31/4.jpg",
            "https://i.dummyjson.com/data/products/31/thumbnail.jpg"
        ],
        "isDeleted": false,
        "__v": 0
    },
    {
        "title": "Sofa for Coffe Cafe",
        "description": "Ratttan Outdoor furniture Set Waterproof  Rattan Sofa for Coffe Cafe",
        "price": 50,
        "discountPercentage": 15.59,
        "rating": 4.74,
        "stock": 30,
        "brand": "Ratttan Outdoor",
        "category": "furniture",
        "thumbnail": "https://i.dummyjson.com/data/products/32/thumbnail.jpg",
        "images": [
            "https://i.dummyjson.com/data/products/32/1.jpg",
            "https://i.dummyjson.com/data/products/32/2.jpg",
            "https://i.dummyjson.com/data/products/32/3.jpg",
            "https://i.dummyjson.com/data/products/32/thumbnail.jpg"
        ],
        "isDeleted": false,
        "__v": 0
    },
    {
        "title": "3 Tier Corner Shelves",
        "description": "3 Tier Corner Shelves | 3 PCs Wall Mount Kitchen Shelf | Floating Bedroom Shelf",
        "price": 700,
        "discountPercentage": 17,
        "rating": 4.31,
        "stock": 106,
        "brand": "Kitchen Shelf",
        "category": "furniture",
        "thumbnail": "https://i.dummyjson.com/data/products/33/thumbnail.jpg",
        "images": [
            "https://i.dummyjson.com/data/products/33/1.jpg",
            "https://i.dummyjson.com/data/products/33/2.jpg",
            "https://i.dummyjson.com/data/products/33/3.jpg",
            "https://i.dummyjson.com/data/products/33/4.jpg",
            "https://i.dummyjson.com/data/products/33/thumbnail.jpg"
        ],
        "isDeleted": false,
        "__v": 0
    },
    {
        "title": "Plastic Table",
        "description": "V﻿ery good quality plastic table for multi purpose now in reasonable price",
        "price": 50,
        "discountPercentage": 4,
        "rating": 4.01,
        "stock": 136,
        "brand": "Multi Purpose",
        "category": "furniture",
        "thumbnail": "https://i.dummyjson.com/data/products/34/thumbnail.jpg",
        "images": [
            "https://i.dummyjson.com/data/products/34/1.jpg",
            "https://i.dummyjson.com/data/products/34/2.jpg",
            "https://i.dummyjson.com/data/products/34/3.jpg",
            "https://i.dummyjson.com/data/products/34/4.jpg",
            "https://i.dummyjson.com/data/products/34/thumbnail.jpg"
        ],
        "isDeleted": false,
        "__v": 0
    },
    {
        "title": "3 DOOR PORTABLE",
        "description": "Material: Stainless Steel and Fabric  Item Size: 110 cm x 45 cm x 175 cm Package Contents: 1 Storage Wardrobe",
        "price": 41,
        "discountPercentage": 7.98,
        "rating": 4.06,
        "stock": 68,
        "brand": "AmnaMart",
        "category": "furniture",
        "thumbnail": "https://i.dummyjson.com/data/products/35/thumbnail.jpg",
        "images": [
            "https://i.dummyjson.com/data/products/35/1.jpg",
            "https://i.dummyjson.com/data/products/35/2.jpg",
            "https://i.dummyjson.com/data/products/35/3.jpg",
            "https://i.dummyjson.com/data/products/35/4.jpg",
            "https://i.dummyjson.com/data/products/35/thumbnail.jpg"
        ],
        "isDeleted": false,
        "__v": 0
    },
    {
        "title": "Sleeve Shirt Womens",
        "description": "Cotton Solid Color Professional Wear Sleeve Shirt Womens Work Blouses Wholesale Clothing Casual Plain Custom Top OEM Customized",
        "price": 90,
        "discountPercentage": 10.89,
        "rating": 4.26,
        "stock": 39,
        "brand": "Professional Wear",
        "category": "tops",
        "thumbnail": "https://i.dummyjson.com/data/products/36/thumbnail.jpg",
        "images": [
            "https://i.dummyjson.com/data/products/36/1.jpg",
            "https://i.dummyjson.com/data/products/36/2.webp",
            "https://i.dummyjson.com/data/products/36/3.webp",
            "https://i.dummyjson.com/data/products/36/4.jpg",
            "https://i.dummyjson.com/data/products/36/thumbnail.jpg"
        ],
        "isDeleted": false,
        "__v": 0
    },
    {
        "title": "ank Tops for Womens/Girls",
        "description": "PACK OF 3 CAMISOLES ,VERY COMFORTABLE SOFT COTTON STUFF, COMFORTABLE IN ALL FOUR SEASONS",
        "price": 50,
        "discountPercentage": 12.05,
        "rating": 4.52,
        "stock": 107,
        "brand": "Soft Cotton",
        "category": "tops",
        "thumbnail": "https://i.dummyjson.com/data/products/37/thumbnail.jpg",
        "images": [
            "https://i.dummyjson.com/data/products/37/1.jpg",
            "https://i.dummyjson.com/data/products/37/2.jpg",
            "https://i.dummyjson.com/data/products/37/3.jpg",
            "https://i.dummyjson.com/data/products/37/4.jpg",
            "https://i.dummyjson.com/data/products/37/thumbnail.jpg"
        ],
        "isDeleted": false,
        "__v": 0
    },
    {
        "title": "sublimation plain kids tank",
        "description": "sublimation plain kids tank tops wholesale",
        "price": 100,
        "discountPercentage": 11.12,
        "rating": 4.8,
        "stock": 20,
        "brand": "Soft Cotton",
        "category": "tops",
        "thumbnail": "https://i.dummyjson.com/data/products/38/thumbnail.jpg",
        "images": [
            "https://i.dummyjson.com/data/products/38/1.png",
            "https://i.dummyjson.com/data/products/38/2.jpg",
            "https://i.dummyjson.com/data/products/38/3.jpg",
            "https://i.dummyjson.com/data/products/38/4.jpg"
        ],
        "isDeleted": false,
        "__v": 0
    },
    {
        "title": "Women Sweaters Wool",
        "description": "2021 Custom Winter Fall Zebra Knit Crop Top Women Sweaters Wool Mohair Cos Customize Crew Neck Women' S Crop Top Sweater",
        "price": 600,
        "discountPercentage": 17.2,
        "rating": 4.55,
        "stock": 55,
        "brand": "Top Sweater",
        "category": "tops",
        "thumbnail": "https://i.dummyjson.com/data/products/39/thumbnail.jpg",
        "images": [
            "https://i.dummyjson.com/data/products/39/1.jpg",
            "https://i.dummyjson.com/data/products/39/2.jpg",
            "https://i.dummyjson.com/data/products/39/3.jpg",
            "https://i.dummyjson.com/data/products/39/4.jpg",
            "https://i.dummyjson.com/data/products/39/thumbnail.jpg"
        ],
        "isDeleted": false,
        "__v": 0
    },
    {
        "title": "women winter clothes",
        "description": "women winter clothes thick fleece hoodie top with sweat pantjogger women sweatsuit set joggers pants two piece pants set",
        "price": 57,
        "discountPercentage": 13.39,
        "rating": 4.91,
        "stock": 84,
        "brand": "Top Sweater",
        "category": "tops",
        "thumbnail": "https://i.dummyjson.com/data/products/40/thumbnail.jpg",
        "images": [
            "https://i.dummyjson.com/data/products/40/1.jpg",
            "https://i.dummyjson.com/data/products/40/2.jpg"
        ],
        "isDeleted": false,
        "__v": 0
    },
    {
        "title": "NIGHT SUIT",
        "description": "NIGHT SUIT RED MICKY MOUSE..  For Girls. Fantastic Suits.",
        "price": 55,
        "discountPercentage": 15.05,
        "rating": 4.65,
        "stock": 21,
        "brand": "RED MICKY MOUSE..",
        "category": "womens-dresses",
        "thumbnail": "https://i.dummyjson.com/data/products/41/thumbnail.webp",
        "images": [
            "https://i.dummyjson.com/data/products/41/1.jpg",
            "https://i.dummyjson.com/data/products/41/2.webp",
            "https://i.dummyjson.com/data/products/41/3.jpg",
            "https://i.dummyjson.com/data/products/41/4.jpg",
            "https://i.dummyjson.com/data/products/41/thumbnail.webp"
        ],
        "isDeleted": false,
        "__v": 0
    },
    {
        "title": "Stiched Kurta plus trouser",
        "description": "FABRIC: LILEIN CHEST: 21 LENGHT: 37 TROUSER: (38) :ARABIC LILEIN",
        "price": 80,
        "discountPercentage": 15.37,
        "rating": 4.05,
        "stock": 148,
        "brand": "Digital Printed",
        "category": "womens-dresses",
        "thumbnail": "https://i.dummyjson.com/data/products/42/thumbnail.jpg",
        "images": [
            "https://i.dummyjson.com/data/products/42/1.png",
            "https://i.dummyjson.com/data/products/42/2.png",
            "https://i.dummyjson.com/data/products/42/3.png",
            "https://i.dummyjson.com/data/products/42/4.jpg",
            "https://i.dummyjson.com/data/products/42/thumbnail.jpg"
        ],
        "isDeleted": false,
        "__v": 0
    },
    {
        "title": "frock gold printed",
        "description": "Ghazi fabric long frock gold printed ready to wear stitched collection (G992)",
        "price": 600,
        "discountPercentage": 15.55,
        "rating": 4.31,
        "stock": 150,
        "brand": "Ghazi Fabric",
        "category": "womens-dresses",
        "thumbnail": "https://i.dummyjson.com/data/products/43/thumbnail.jpg",
        "images": [
            "https://i.dummyjson.com/data/products/43/1.jpg",
            "https://i.dummyjson.com/data/products/43/2.jpg",
            "https://i.dummyjson.com/data/products/43/3.jpg",
            "https://i.dummyjson.com/data/products/43/4.jpg",
            "https://i.dummyjson.com/data/products/43/thumbnail.jpg"
        ],
        "isDeleted": false,
        "__v": 0
    },
    {
        "title": "Ladies Multicolored Dress",
        "description": "This classy shirt for women gives you a gorgeous look on everyday wear and specially for semi-casual wears.",
        "price": 79,
        "discountPercentage": 16.88,
        "rating": 4.03,
        "stock": 2,
        "brand": "Ghazi Fabric",
        "category": "womens-dresses",
        "thumbnail": "https://i.dummyjson.com/data/products/44/thumbnail.jpg",
        "images": [
            "https://i.dummyjson.com/data/products/44/1.jpg",
            "https://i.dummyjson.com/data/products/44/2.jpg",
            "https://i.dummyjson.com/data/products/44/3.jpg",
            "https://i.dummyjson.com/data/products/44/4.jpg",
            "https://i.dummyjson.com/data/products/44/thumbnail.jpg"
        ],
        "isDeleted": false,
        "__v": 0
    },
    {
        "title": "Malai Maxi Dress",
        "description": "Ready to wear, Unique design according to modern standard fashion, Best fitting ,Imported stuff",
        "price": 50,
        "discountPercentage": 5.07,
        "rating": 4.67,
        "stock": 96,
        "brand": "IELGY",
        "category": "womens-dresses",
        "thumbnail": "https://i.dummyjson.com/data/products/45/thumbnail.jpg",
        "images": [
            "https://i.dummyjson.com/data/products/45/1.jpg",
            "https://i.dummyjson.com/data/products/45/2.webp",
            "https://i.dummyjson.com/data/products/45/3.jpg",
            "https://i.dummyjson.com/data/products/45/4.jpg",
            "https://i.dummyjson.com/data/products/45/thumbnail.jpg"
        ],
        "isDeleted": false,
        "__v": 0
    },
    {
        "title": "women's shoes",
        "description": "Close: Lace, Style with bottom: Increased inside, Sole Material: Rubber",
        "price": 40,
        "discountPercentage": 16.96,
        "rating": 4.14,
        "stock": 72,
        "brand": "IELGY fashion",
        "category": "womens-shoes",
        "thumbnail": "https://i.dummyjson.com/data/products/46/thumbnail.jpg",
        "images": [
            "https://i.dummyjson.com/data/products/46/1.webp",
            "https://i.dummyjson.com/data/products/46/2.jpg",
            "https://i.dummyjson.com/data/products/46/3.jpg",
            "https://i.dummyjson.com/data/products/46/4.jpg",
            "https://i.dummyjson.com/data/products/46/thumbnail.jpg"
        ],
        "isDeleted": false,
        "__v": 0
    },
    {
        "title": "Sneaker shoes",
        "description": "Synthetic Leather Casual Sneaker shoes for Women/girls Sneakers For Women",
        "price": 120,
        "discountPercentage": 10.37,
        "rating": 4.19,
        "stock": 50,
        "brand": "Synthetic Leather",
        "category": "womens-shoes",
        "thumbnail": "https://i.dummyjson.com/data/products/47/thumbnail.jpeg",
        "images": [
            "https://i.dummyjson.com/data/products/47/1.jpg",
            "https://i.dummyjson.com/data/products/47/2.jpg",
            "https://i.dummyjson.com/data/products/47/3.jpg",
            "https://i.dummyjson.com/data/products/47/thumbnail.jpeg"
        ],
        "isDeleted": false,
        "__v": 0
    },
    {
        "title": "Women Strip Heel",
        "description": "Features: Flip-flops, Mid Heel, Comfortable, Striped Heel, Antiskid, Striped",
        "price": 40,
        "discountPercentage": 10.83,
        "rating": 4.02,
        "stock": 25,
        "brand": "Sandals Flip Flops",
        "category": "womens-shoes",
        "thumbnail": "https://i.dummyjson.com/data/products/48/thumbnail.jpg",
        "images": [
            "https://i.dummyjson.com/data/products/48/1.jpg",
            "https://i.dummyjson.com/data/products/48/2.jpg",
            "https://i.dummyjson.com/data/products/48/3.jpg",
            "https://i.dummyjson.com/data/products/48/4.jpg",
            "https://i.dummyjson.com/data/products/48/thumbnail.jpg"
        ],
        "isDeleted": false,
        "__v": 0
    },
    {
        "title": "Chappals & Shoe Ladies Metallic",
        "description": "Womens Chappals & Shoe Ladies Metallic Tong Thong Sandal Flat Summer 2020 Maasai Sandals",
        "price": 23,
        "discountPercentage": 2.62,
        "rating": 4.72,
        "stock": 107,
        "brand": "Maasai Sandals",
        "category": "womens-shoes",
        "thumbnail": "https://i.dummyjson.com/data/products/49/thumbnail.jpg",
        "images": [
            "https://i.dummyjson.com/data/products/49/1.jpg",
            "https://i.dummyjson.com/data/products/49/2.jpg",
            "https://i.dummyjson.com/data/products/49/3.webp",
            "https://i.dummyjson.com/data/products/49/thumbnail.jpg"
        ],
        "isDeleted": false,
        "__v": 0
    },
    {
        "title": "Women Shoes",
        "description": "2020 New Arrivals Genuine Leather Fashion Trend Platform Summer Women Shoes",
        "price": 36,
        "discountPercentage": 16.87,
        "rating": 4.33,
        "stock": 46,
        "brand": "Arrivals Genuine",
        "category": "womens-shoes",
        "thumbnail": "https://i.dummyjson.com/data/products/50/thumbnail.jpg",
        "images": [
            "https://i.dummyjson.com/data/products/50/1.jpeg",
            "https://i.dummyjson.com/data/products/50/2.jpg",
            "https://i.dummyjson.com/data/products/50/3.jpg"
        ],
        "isDeleted": false,
        "__v": 0
    },
    {
        "title": "half sleeves T shirts",
        "description": "Many store is creating new designs and trend every month and every year. Daraz.pk have a beautiful range of men fashion brands",
        "price": 23,
        "discountPercentage": 12.76,
        "rating": 4.26,
        "stock": 132,
        "brand": "Vintage Apparel",
        "category": "mens-shirts",
        "thumbnail": "https://i.dummyjson.com/data/products/51/thumbnail.jpg",
        "images": [
            "https://i.dummyjson.com/data/products/51/1.png",
            "https://i.dummyjson.com/data/products/51/2.jpg",
            "https://i.dummyjson.com/data/products/51/3.jpg",
            "https://i.dummyjson.com/data/products/51/thumbnail.jpg"
        ],
        "isDeleted": false,
        "__v": 0
    },
    {
        "title": "FREE FIRE T Shirt",
        "description": "quality and professional print - It doesn't just look high quality, it is high quality.",
        "price": 10,
        "discountPercentage": 14.72,
        "rating": 4.52,
        "stock": 128,
        "brand": "FREE FIRE",
        "category": "mens-shirts",
        "thumbnail": "https://i.dummyjson.com/data/products/52/thumbnail.jpg",
        "images": [
            "https://i.dummyjson.com/data/products/52/1.png",
            "https://i.dummyjson.com/data/products/52/2.png",
            "https://i.dummyjson.com/data/products/52/3.jpg",
            "https://i.dummyjson.com/data/products/52/4.jpg",
            "https://i.dummyjson.com/data/products/52/thumbnail.jpg"
        ],
        "isDeleted": false,
        "__v": 0
    },
    {
        "title": "printed high quality T shirts",
        "description": "Brand: vintage Apparel ,Export quality",
        "price": 35,
        "discountPercentage": 7.54,
        "rating": 4.89,
        "stock": 6,
        "brand": "Vintage Apparel",
        "category": "mens-shirts",
        "thumbnail": "https://i.dummyjson.com/data/products/53/thumbnail.jpg",
        "images": [
            "https://i.dummyjson.com/data/products/53/1.webp",
            "https://i.dummyjson.com/data/products/53/2.jpg",
            "https://i.dummyjson.com/data/products/53/3.jpg",
            "https://i.dummyjson.com/data/products/53/4.jpg",
            "https://i.dummyjson.com/data/products/53/thumbnail.jpg"
        ],
        "isDeleted": false,
        "__v": 0
    },
    {
        "title": "Pubg Printed Graphic T-Shirt",
        "description": "Product Description Features: 100% Ultra soft Polyester Jersey. Vibrant & colorful printing on front. Feels soft as cotton without ever cracking",
        "price": 46,
        "discountPercentage": 16.44,
        "rating": 4.62,
        "stock": 136,
        "brand": "The Warehouse",
        "category": "mens-shirts",
        "thumbnail": "https://i.dummyjson.com/data/products/54/thumbnail.jpg",
        "images": [
            "https://i.dummyjson.com/data/products/54/1.jpg",
            "https://i.dummyjson.com/data/products/54/2.jpg",
            "https://i.dummyjson.com/data/products/54/3.jpg",
            "https://i.dummyjson.com/data/products/54/4.jpg",
            "https://i.dummyjson.com/data/products/54/thumbnail.jpg"
        ],
        "isDeleted": false,
        "__v": 0
    },
    {
        "title": "Money Heist Printed Summer T Shirts",
        "description": "Fabric Jercy, Size: M & L Wear Stylish Dual Stiched",
        "price": 66,
        "discountPercentage": 15.97,
        "rating": 4.9,
        "stock": 122,
        "brand": "The Warehouse",
        "category": "mens-shirts",
        "thumbnail": "https://i.dummyjson.com/data/products/55/thumbnail.jpg",
        "images": [
            "https://i.dummyjson.com/data/products/55/1.jpg",
            "https://i.dummyjson.com/data/products/55/2.webp",
            "https://i.dummyjson.com/data/products/55/3.jpg",
            "https://i.dummyjson.com/data/products/55/4.jpg",
            "https://i.dummyjson.com/data/products/55/thumbnail.jpg"
        ],
        "isDeleted": false,
        "__v": 0
    },
    {
        "title": "Sneakers Joggers Shoes",
        "description": "Gender: Men , Colors: Same as DisplayedCondition: 100% Brand New",
        "price": 40,
        "discountPercentage": 12.57,
        "rating": 4.38,
        "stock": 6,
        "brand": "Sneakers",
        "category": "mens-shoes",
        "thumbnail": "https://i.dummyjson.com/data/products/56/thumbnail.jpg",
        "images": [
            "https://i.dummyjson.com/data/products/56/1.jpg",
            "https://i.dummyjson.com/data/products/56/2.jpg",
            "https://i.dummyjson.com/data/products/56/3.jpg",
            "https://i.dummyjson.com/data/products/56/4.jpg",
            "https://i.dummyjson.com/data/products/56/5.jpg",
            "https://i.dummyjson.com/data/products/56/thumbnail.jpg"
        ],
        "isDeleted": false,
        "__v": 0
    },
    {
        "title": "Loafers for men",
        "description": "Men Shoes - Loafers for men - Rubber Shoes - Nylon Shoes - Shoes for men - Moccassion - Pure Nylon (Rubber) Expot Quality.",
        "price": 47,
        "discountPercentage": 10.91,
        "rating": 4.91,
        "stock": 20,
        "brand": "Rubber",
        "category": "mens-shoes",
        "thumbnail": "https://i.dummyjson.com/data/products/57/thumbnail.jpg",
        "images": [
            "https://i.dummyjson.com/data/products/57/1.jpg",
            "https://i.dummyjson.com/data/products/57/2.jpg",
            "https://i.dummyjson.com/data/products/57/3.jpg",
            "https://i.dummyjson.com/data/products/57/4.jpg",
            "https://i.dummyjson.com/data/products/57/thumbnail.jpg"
        ],
        "isDeleted": false,
        "__v": 0
    },
    {
        "title": "formal offices shoes",
        "description": "Pattern Type: Solid, Material: PU, Toe Shape: Pointed Toe ,Outsole Material: Rubber",
        "price": 57,
        "discountPercentage": 12,
        "rating": 4.41,
        "stock": 68,
        "brand": "The Warehouse",
        "category": "mens-shoes",
        "thumbnail": "https://i.dummyjson.com/data/products/58/thumbnail.jpg",
        "images": [
            "https://i.dummyjson.com/data/products/58/1.jpg",
            "https://i.dummyjson.com/data/products/58/2.jpg",
            "https://i.dummyjson.com/data/products/58/3.jpg",
            "https://i.dummyjson.com/data/products/58/4.jpg",
            "https://i.dummyjson.com/data/products/58/thumbnail.jpg"
        ],
        "isDeleted": false,
        "__v": 0
    },
    {
        "title": "Spring and summershoes",
        "description": "Comfortable stretch cloth, lightweight body; ,rubber sole, anti-skid wear;",
        "price": 20,
        "discountPercentage": 8.71,
        "rating": 4.33,
        "stock": 137,
        "brand": "Sneakers",
        "category": "mens-shoes",
        "thumbnail": "https://i.dummyjson.com/data/products/59/thumbnail.jpg",
        "images": [
            "https://i.dummyjson.com/data/products/59/1.jpg",
            "https://i.dummyjson.com/data/products/59/2.jpg",
            "https://i.dummyjson.com/data/products/59/3.jpg",
            "https://i.dummyjson.com/data/products/59/4.jpg",
            "https://i.dummyjson.com/data/products/59/thumbnail.jpg"
        ],
        "isDeleted": false,
        "__v": 0
    },
    {
        "title": "Stylish Casual Jeans Shoes",
        "description": "High Quality ,Stylish design ,Comfortable wear ,FAshion ,Durable",
        "price": 58,
        "discountPercentage": 7.55,
        "rating": 4.55,
        "stock": 129,
        "brand": "Sneakers",
        "category": "mens-shoes",
        "thumbnail": "https://i.dummyjson.com/data/products/60/thumbnail.jpg",
        "images": [
            "https://i.dummyjson.com/data/products/60/1.jpg",
            "https://i.dummyjson.com/data/products/60/2.jpg",
            "https://i.dummyjson.com/data/products/60/3.jpg",
            "https://i.dummyjson.com/data/products/60/thumbnail.jpg"
        ],
        "isDeleted": false,
        "__v": 0
    },
    {
        "title": "Leather Straps Wristwatch",
        "description": "Style:Sport ,Clasp:Buckles ,Water Resistance Depth:3Bar",
        "price": 120,
        "discountPercentage": 7.14,
        "rating": 4.63,
        "stock": 91,
        "brand": "Naviforce",
        "category": "mens-watches",
        "thumbnail": "https://i.dummyjson.com/data/products/61/thumbnail.jpg",
        "images": [
            "https://i.dummyjson.com/data/products/61/1.jpg",
            "https://i.dummyjson.com/data/products/61/2.png",
            "https://i.dummyjson.com/data/products/61/3.jpg"
        ],
        "isDeleted": false,
        "__v": 0
    },
    {
        "title": "Waterproof Leather Brand Watch",
        "description": "Watch Crown With Environmental IPS Bronze Electroplating; Display system of 12 hours",
        "price": 46,
        "discountPercentage": 3.15,
        "rating": 4.05,
        "stock": 95,
        "brand": "SKMEI 9117",
        "category": "mens-watches",
        "thumbnail": "https://i.dummyjson.com/data/products/62/thumbnail.jpg",
        "images": [
            "https://i.dummyjson.com/data/products/62/1.jpg",
            "https://i.dummyjson.com/data/products/62/2.jpg"
        ],
        "isDeleted": false,
        "__v": 0
    },
    {
        "title": "Royal Blue Premium Watch",
        "description": "Men Silver Chain Royal Blue Premium Watch Latest Analog Watch",
        "price": 50,
        "discountPercentage": 2.56,
        "rating": 4.89,
        "stock": 142,
        "brand": "SKMEI 9117",
        "category": "mens-watches",
        "thumbnail": "https://i.dummyjson.com/data/products/63/thumbnail.webp",
        "images": [
            "https://i.dummyjson.com/data/products/63/1.jpg",
            "https://i.dummyjson.com/data/products/63/2.jpg",
            "https://i.dummyjson.com/data/products/63/3.png",
            "https://i.dummyjson.com/data/products/63/4.jpeg"
        ],
        "isDeleted": false,
        "__v": 0
    },
    {
        "title": "Leather Strap Skeleton Watch",
        "description": "Leather Strap Skeleton Watch for Men - Stylish and Latest Design",
        "price": 46,
        "discountPercentage": 10.2,
        "rating": 4.98,
        "stock": 61,
        "brand": "Strap Skeleton",
        "category": "mens-watches",
        "thumbnail": "https://i.dummyjson.com/data/products/64/thumbnail.jpg",
        "images": [
            "https://i.dummyjson.com/data/products/64/1.jpg",
            "https://i.dummyjson.com/data/products/64/2.webp",
            "https://i.dummyjson.com/data/products/64/3.jpg",
            "https://i.dummyjson.com/data/products/64/thumbnail.jpg"
        ],
        "isDeleted": false,
        "__v": 0
    },
    {
        "title": "Stainless Steel Wrist Watch",
        "description": "Stylish Watch For Man (Luxury) Classy Men's Stainless Steel Wrist Watch - Box Packed",
        "price": 47,
        "discountPercentage": 17.79,
        "rating": 4.79,
        "stock": 94,
        "brand": "Stainless",
        "category": "mens-watches",
        "thumbnail": "https://i.dummyjson.com/data/products/65/thumbnail.webp",
        "images": [
            "https://i.dummyjson.com/data/products/65/1.jpg",
            "https://i.dummyjson.com/data/products/65/2.webp",
            "https://i.dummyjson.com/data/products/65/3.jpg",
            "https://i.dummyjson.com/data/products/65/4.webp",
            "https://i.dummyjson.com/data/products/65/thumbnail.webp"
        ],
        "isDeleted": false,
        "__v": 0
    },
    {
        "title": "Steel Analog Couple Watches",
        "description": "Elegant design, Stylish ,Unique & Trendy,Comfortable wear",
        "price": 35,
        "discountPercentage": 3.23,
        "rating": 4.79,
        "stock": 24,
        "brand": "Eastern Watches",
        "category": "womens-watches",
        "thumbnail": "https://i.dummyjson.com/data/products/66/thumbnail.jpg",
        "images": [
            "https://i.dummyjson.com/data/products/66/1.jpg",
            "https://i.dummyjson.com/data/products/66/2.jpg",
            "https://i.dummyjson.com/data/products/66/3.jpg",
            "https://i.dummyjson.com/data/products/66/4.JPG",
            "https://i.dummyjson.com/data/products/66/thumbnail.jpg"
        ],
        "isDeleted": false,
        "__v": 0
    },
    {
        "title": "Fashion Magnetic Wrist Watch",
        "description": "Buy this awesome  The product is originally manufactured by the company and it's a top selling product with a very reasonable",
        "price": 60,
        "discountPercentage": 16.69,
        "rating": 4.03,
        "stock": 46,
        "brand": "Eastern Watches",
        "category": "womens-watches",
        "thumbnail": "https://i.dummyjson.com/data/products/67/thumbnail.jpg",
        "images": [
            "https://i.dummyjson.com/data/products/67/1.jpg",
            "https://i.dummyjson.com/data/products/67/2.jpg",
            "https://i.dummyjson.com/data/products/67/3.jpg",
            "https://i.dummyjson.com/data/products/67/4.jpg",
            "https://i.dummyjson.com/data/products/67/thumbnail.jpg"
        ],
        "isDeleted": false,
        "__v": 0
    },
    {
        "title": "Stylish Luxury Digital Watch",
        "description": "Stylish Luxury Digital Watch For Girls / Women - Led Smart Ladies Watches For Girls",
        "price": 57,
        "discountPercentage": 9.03,
        "rating": 4.55,
        "stock": 77,
        "brand": "Luxury Digital",
        "category": "womens-watches",
        "thumbnail": "https://i.dummyjson.com/data/products/68/thumbnail.webp",
        "images": [
            "https://i.dummyjson.com/data/products/68/1.jpg",
            "https://i.dummyjson.com/data/products/68/2.jpg"
        ],
        "isDeleted": false,
        "__v": 0
    },
    {
        "title": "Golden Watch Pearls Bracelet Watch",
        "description": "Product details of Golden Watch Pearls Bracelet Watch For Girls - Golden Chain Ladies Bracelate Watch for Women",
        "price": 47,
        "discountPercentage": 17.55,
        "rating": 4.77,
        "stock": 89,
        "brand": "Watch Pearls",
        "category": "womens-watches",
        "thumbnail": "https://i.dummyjson.com/data/products/69/thumbnail.jpg",
        "images": [
            "https://i.dummyjson.com/data/products/69/1.jpg",
            "https://i.dummyjson.com/data/products/69/2.jpg",
            "https://i.dummyjson.com/data/products/69/3.webp",
            "https://i.dummyjson.com/data/products/69/4.jpg",
            "https://i.dummyjson.com/data/products/69/thumbnail.jpg"
        ],
        "isDeleted": false,
        "__v": 0
    },
    {
        "title": "Stainless Steel Women",
        "description": "Fashion Skmei 1830 Shell Dial Stainless Steel Women Wrist Watch Lady Bracelet Watch Quartz Watches Ladies",
        "price": 35,
        "discountPercentage": 8.98,
        "rating": 4.08,
        "stock": 111,
        "brand": "Bracelet",
        "category": "womens-watches",
        "thumbnail": "https://i.dummyjson.com/data/products/70/thumbnail.jpg",
        "images": [
            "https://i.dummyjson.com/data/products/70/1.jpg",
            "https://i.dummyjson.com/data/products/70/2.jpg",
            "https://i.dummyjson.com/data/products/70/thumbnail.jpg"
        ],
        "isDeleted": false,
        "__v": 0
    },
    {
        "title": "Women Shoulder Bags",
        "description": "LouisWill Women Shoulder Bags Long Clutches Cross Body Bags Phone Bags PU Leather Hand Bags Large Capacity Card Holders Zipper Coin Purses Fashion Crossbody Bags for Girls Ladies",
        "price": 46,
        "discountPercentage": 14.65,
        "rating": 4.71,
        "stock": 17,
        "brand": "LouisWill",
        "category": "womens-bags",
        "thumbnail": "https://i.dummyjson.com/data/products/71/thumbnail.jpg",
        "images": [
            "https://i.dummyjson.com/data/products/71/1.jpg",
            "https://i.dummyjson.com/data/products/71/2.jpg",
            "https://i.dummyjson.com/data/products/71/3.webp",
            "https://i.dummyjson.com/data/products/71/thumbnail.jpg"
        ],
        "isDeleted": false,
        "__v": 0
    },
    {
        "title": "Handbag For Girls",
        "description": "This fashion is designed to add a charming effect to your casual outfit. This Bag is made of synthetic leather.",
        "price": 23,
        "discountPercentage": 17.5,
        "rating": 4.91,
        "stock": 27,
        "brand": "LouisWill",
        "category": "womens-bags",
        "thumbnail": "https://i.dummyjson.com/data/products/72/thumbnail.webp",
        "images": [
            "https://i.dummyjson.com/data/products/72/1.jpg",
            "https://i.dummyjson.com/data/products/72/2.png",
            "https://i.dummyjson.com/data/products/72/3.webp",
            "https://i.dummyjson.com/data/products/72/4.jpg",
            "https://i.dummyjson.com/data/products/72/thumbnail.webp"
        ],
        "isDeleted": false,
        "__v": 0
    },
    {
        "title": "Fancy hand clutch",
        "description": "This fashion is designed to add a charming effect to your casual outfit. This Bag is made of synthetic leather.",
        "price": 44,
        "discountPercentage": 10.39,
        "rating": 4.18,
        "stock": 101,
        "brand": "Bracelet",
        "category": "womens-bags",
        "thumbnail": "https://i.dummyjson.com/data/products/73/thumbnail.jpg",
        "images": [
            "https://i.dummyjson.com/data/products/73/1.jpg",
            "https://i.dummyjson.com/data/products/73/2.webp",
            "https://i.dummyjson.com/data/products/73/3.jpg",
            "https://i.dummyjson.com/data/products/73/thumbnail.jpg"
        ],
        "isDeleted": false,
        "__v": 0
    },
    {
        "title": "Leather Hand Bag",
        "description": "It features an attractive design that makes it a must have accessory in your collection. We sell different kind of bags for boys, kids, women, girls and also for unisex.",
        "price": 57,
        "discountPercentage": 11.19,
        "rating": 4.01,
        "stock": 43,
        "brand": "Copenhagen Luxe",
        "category": "womens-bags",
        "thumbnail": "https://i.dummyjson.com/data/products/74/thumbnail.jpg",
        "images": [
            "https://i.dummyjson.com/data/products/74/1.jpg",
            "https://i.dummyjson.com/data/products/74/2.jpg",
            "https://i.dummyjson.com/data/products/74/3.jpg",
            "https://i.dummyjson.com/data/products/74/4.jpg",
            "https://i.dummyjson.com/data/products/74/thumbnail.jpg"
        ],
        "isDeleted": false,
        "__v": 0
    },
    {
        "title": "Seven Pocket Women Bag",
        "description": "Seven Pocket Women Bag Handbags Lady Shoulder Crossbody Bag Female Purse Seven Pocket Bag",
        "price": 68,
        "discountPercentage": 14.87,
        "rating": 4.93,
        "stock": 13,
        "brand": "Steal Frame",
        "category": "womens-bags",
        "thumbnail": "https://i.dummyjson.com/data/products/75/thumbnail.jpg",
        "images": [
            "https://i.dummyjson.com/data/products/75/1.jpg",
            "https://i.dummyjson.com/data/products/75/2.jpg",
            "https://i.dummyjson.com/data/products/75/3.jpg",
            "https://i.dummyjson.com/data/products/75/thumbnail.jpg"
        ],
        "isDeleted": false,
        "__v": 0
    },
    {
        "title": "Silver Ring Set Women",
        "description": "Jewelry Type:RingsCertificate Type:NonePlating:Silver PlatedShapeattern:noneStyle:CLASSICReligious",
        "price": 70,
        "discountPercentage": 13.57,
        "rating": 4.61,
        "stock": 51,
        "brand": "Darojay",
        "category": "womens-jewellery",
        "thumbnail": "https://i.dummyjson.com/data/products/76/thumbnail.jpg",
        "images": [
            "https://i.dummyjson.com/data/products/76/1.jpg",
            "https://i.dummyjson.com/data/products/76/2.jpg",
            "https://i.dummyjson.com/data/products/76/thumbnail.jpg"
        ],
        "isDeleted": false,
        "__v": 0
    },
    {
        "title": "Rose Ring",
        "description": "Brand: The Greetings Flower Colour: RedRing Colour: GoldenSize: Adjustable",
        "price": 100,
        "discountPercentage": 3.22,
        "rating": 4.21,
        "stock": 149,
        "brand": "Copenhagen Luxe",
        "category": "womens-jewellery",
        "thumbnail": "https://i.dummyjson.com/data/products/77/thumbnail.jpg",
        "images": [
            "https://i.dummyjson.com/data/products/77/1.jpg",
            "https://i.dummyjson.com/data/products/77/2.jpg",
            "https://i.dummyjson.com/data/products/77/3.jpg",
            "https://i.dummyjson.com/data/products/77/thumbnail.jpg"
        ],
        "isDeleted": false,
        "__v": 0
    },
    {
        "title": "Rhinestone Korean Style Open Rings",
        "description": "Fashion Jewellery 3Pcs Adjustable Pearl Rhinestone Korean Style Open Rings For Women",
        "price": 30,
        "discountPercentage": 8.02,
        "rating": 4.69,
        "stock": 9,
        "brand": "Fashion Jewellery",
        "category": "womens-jewellery",
        "thumbnail": "https://i.dummyjson.com/data/products/78/thumbnail.jpg",
        "images": [
            "https://i.dummyjson.com/data/products/78/thumbnail.jpg"
        ],
        "isDeleted": false,
        "__v": 0
    },
    {
        "title": "Elegant Female Pearl Earrings",
        "description": "Elegant Female Pearl Earrings Set Zircon Pearl Earings Women Party Accessories 9 Pairs/Set",
        "price": 30,
        "discountPercentage": 12.8,
        "rating": 4.74,
        "stock": 16,
        "brand": "Fashion Jewellery",
        "category": "womens-jewellery",
        "thumbnail": "https://i.dummyjson.com/data/products/79/thumbnail.jpg",
        "images": [
            "https://i.dummyjson.com/data/products/79/1.jpg"
        ],
        "isDeleted": false,
        "__v": 0
    },
    {
        "title": "Chain Pin Tassel Earrings",
        "description": "Pair Of Ear Cuff Butterfly Long Chain Pin Tassel Earrings - Silver ( Long Life Quality Product)",
        "price": 45,
        "discountPercentage": 17.75,
        "rating": 4.59,
        "stock": 9,
        "brand": "Cuff Butterfly",
        "category": "womens-jewellery",
        "thumbnail": "https://i.dummyjson.com/data/products/80/thumbnail.jpg",
        "images": [
            "https://i.dummyjson.com/data/products/80/1.jpg",
            "https://i.dummyjson.com/data/products/80/2.jpg",
            "https://i.dummyjson.com/data/products/80/3.png",
            "https://i.dummyjson.com/data/products/80/4.jpg",
            "https://i.dummyjson.com/data/products/80/thumbnail.jpg"
        ],
        "isDeleted": false,
        "__v": 0
    },
    {
        "title": "Round Silver Frame Sun Glasses",
        "description": "A pair of sunglasses can protect your eyes from being hurt. For car driving, vacation travel, outdoor activities, social gatherings,",
        "price": 19,
        "discountPercentage": 10.1,
        "rating": 4.94,
        "stock": 78,
        "brand": "Designer Sun Glasses",
        "category": "sunglasses",
        "thumbnail": "https://i.dummyjson.com/data/products/81/thumbnail.jpg",
        "images": [
            "https://i.dummyjson.com/data/products/81/1.jpg",
            "https://i.dummyjson.com/data/products/81/2.jpg",
            "https://i.dummyjson.com/data/products/81/3.jpg",
            "https://i.dummyjson.com/data/products/81/4.webp",
            "https://i.dummyjson.com/data/products/81/thumbnail.jpg"
        ],
        "isDeleted": false,
        "__v": 0
    },
    {
        "title": "Kabir Singh Square Sunglass",
        "description": "Orignal Metal Kabir Singh design 2020 Sunglasses Men Brand Designer Sun Glasses Kabir Singh Square Sunglass",
        "price": 50,
        "discountPercentage": 15.6,
        "rating": 4.62,
        "stock": 78,
        "brand": "Designer Sun Glasses",
        "category": "sunglasses",
        "thumbnail": "https://i.dummyjson.com/data/products/82/thumbnail.jpg",
        "images": [
            "https://i.dummyjson.com/data/products/82/1.jpg",
            "https://i.dummyjson.com/data/products/82/2.webp",
            "https://i.dummyjson.com/data/products/82/3.jpg",
            "https://i.dummyjson.com/data/products/82/4.jpg",
            "https://i.dummyjson.com/data/products/82/thumbnail.jpg"
        ],
        "isDeleted": false,
        "__v": 0
    },
    {
        "title": "Wiley X Night Vision Yellow Glasses",
        "description": "Wiley X Night Vision Yellow Glasses for Riders - Night Vision Anti Fog Driving Glasses - Free Night Glass Cover - Shield Eyes From Dust and Virus- For Night Sport Matches",
        "price": 30,
        "discountPercentage": 6.33,
        "rating": 4.97,
        "stock": 115,
        "brand": "mastar watch",
        "category": "sunglasses",
        "thumbnail": "https://i.dummyjson.com/data/products/83/thumbnail.jpg",
        "images": [
            "https://i.dummyjson.com/data/products/83/1.jpg",
            "https://i.dummyjson.com/data/products/83/2.jpg",
            "https://i.dummyjson.com/data/products/83/3.jpg",
            "https://i.dummyjson.com/data/products/83/4.jpg",
            "https://i.dummyjson.com/data/products/83/thumbnail.jpg"
        ],
        "isDeleted": false,
        "__v": 0
    },
    {
        "title": "Square Sunglasses",
        "description": "Fashion Oversized Square Sunglasses Retro Gradient Big Frame Sunglasses For Women One Piece Gafas Shade Mirror Clear Lens 17059",
        "price": 28,
        "discountPercentage": 13.89,
        "rating": 4.64,
        "stock": 64,
        "brand": "mastar watch",
        "category": "sunglasses",
        "thumbnail": "https://i.dummyjson.com/data/products/84/thumbnail.jpg",
        "images": [
            "https://i.dummyjson.com/data/products/84/1.jpg",
            "https://i.dummyjson.com/data/products/84/2.jpg",
            "https://i.dummyjson.com/data/products/84/thumbnail.jpg"
        ],
        "isDeleted": false,
        "__v": 0
    },
    {
        "title": "LouisWill Men Sunglasses",
        "description": "LouisWill Men Sunglasses Polarized Sunglasses UV400 Sunglasses Day Night Dual Use Safety Driving Night Vision Eyewear AL-MG Frame Sun Glasses with Free Box for Drivers",
        "price": 50,
        "discountPercentage": 11.27,
        "rating": 4.98,
        "stock": 92,
        "brand": "LouisWill",
        "category": "sunglasses",
        "thumbnail": "https://i.dummyjson.com/data/products/85/thumbnail.jpg",
        "images": [
            "https://i.dummyjson.com/data/products/85/1.jpg",
            "https://i.dummyjson.com/data/products/85/2.jpg",
            "https://i.dummyjson.com/data/products/85/thumbnail.jpg"
        ],
        "isDeleted": false,
        "__v": 0
    },
    {
        "title": "Bluetooth Aux",
        "description": "Bluetooth Aux Bluetooth Car Aux Car Bluetooth Transmitter Aux Audio Receiver Handfree Car Bluetooth Music Receiver Universal 3.5mm Streaming A2DP Wireless Auto AUX Audio Adapter With Mic For Phone MP3",
        "price": 25,
        "discountPercentage": 10.56,
        "rating": 4.57,
        "stock": 22,
        "brand": "Car Aux",
        "category": "automotive",
        "thumbnail": "https://i.dummyjson.com/data/products/86/thumbnail.jpg",
        "images": [
            "https://i.dummyjson.com/data/products/86/1.jpg",
            "https://i.dummyjson.com/data/products/86/2.webp",
            "https://i.dummyjson.com/data/products/86/3.jpg",
            "https://i.dummyjson.com/data/products/86/4.jpg",
            "https://i.dummyjson.com/data/products/86/thumbnail.jpg"
        ],
        "isDeleted": false,
        "__v": 0
    },
    {
        "title": "t Temperature Controller Incubator Controller",
        "description": "Both Heat and Cool Purpose, Temperature control range; -50 to +110, Temperature measurement accuracy; 0.1, Control accuracy; 0.1",
        "price": 40,
        "discountPercentage": 11.3,
        "rating": 4.54,
        "stock": 37,
        "brand": "W1209 DC12V",
        "category": "automotive",
        "thumbnail": "https://i.dummyjson.com/data/products/87/thumbnail.jpg",
        "images": [
            "https://i.dummyjson.com/data/products/87/1.jpg",
            "https://i.dummyjson.com/data/products/87/2.jpg",
            "https://i.dummyjson.com/data/products/87/3.jpg",
            "https://i.dummyjson.com/data/products/87/4.jpg",
            "https://i.dummyjson.com/data/products/87/thumbnail.jpg"
        ],
        "isDeleted": false,
        "__v": 0
    },
    {
        "title": "TC Reusable Silicone Magic Washing Gloves",
        "description": "TC Reusable Silicone Magic Washing Gloves with Scrubber, Cleaning Brush Scrubber Gloves Heat Resistant Pair for Cleaning of Kitchen, Dishes, Vegetables and Fruits, Bathroom, Car Wash, Pet Care and Multipurpose",
        "price": 29,
        "discountPercentage": 3.19,
        "rating": 4.98,
        "stock": 42,
        "brand": "TC Reusable",
        "category": "automotive",
        "thumbnail": "https://i.dummyjson.com/data/products/88/thumbnail.jpg",
        "images": [
            "https://i.dummyjson.com/data/products/88/1.jpg",
            "https://i.dummyjson.com/data/products/88/2.jpg",
            "https://i.dummyjson.com/data/products/88/3.jpg",
            "https://i.dummyjson.com/data/products/88/4.webp",
            "https://i.dummyjson.com/data/products/88/thumbnail.jpg"
        ],
        "isDeleted": false,
        "__v": 0
    },
    {
        "title": "Qualcomm original Car Charger",
        "description": "best Quality CHarger , Highly Recommended to all best Quality CHarger , Highly Recommended to all",
        "price": 40,
        "discountPercentage": 17.53,
        "rating": 4.2,
        "stock": 79,
        "brand": "TC Reusable",
        "category": "automotive",
        "thumbnail": "https://i.dummyjson.com/data/products/89/thumbnail.jpg",
        "images": [
            "https://i.dummyjson.com/data/products/89/1.jpg",
            "https://i.dummyjson.com/data/products/89/2.jpg",
            "https://i.dummyjson.com/data/products/89/3.jpg",
            "https://i.dummyjson.com/data/products/89/4.jpg",
            "https://i.dummyjson.com/data/products/89/thumbnail.jpg"
        ],
        "isDeleted": false,
        "__v": 0
    },
    {
        "title": "Cycle Bike Glow",
        "description": "Universal fitment and easy to install no special wires, can be easily installed and removed. Fits most standard tyre air stem valves of road, mountain bicycles, motocycles and cars.Bright led will turn on w",
        "price": 35,
        "discountPercentage": 11.08,
        "rating": 4.1,
        "stock": 63,
        "brand": "Neon LED Light",
        "category": "automotive",
        "thumbnail": "https://i.dummyjson.com/data/products/90/thumbnail.jpg",
        "images": [
            "https://i.dummyjson.com/data/products/90/1.jpg",
            "https://i.dummyjson.com/data/products/90/2.jpg",
            "https://i.dummyjson.com/data/products/90/3.jpg",
            "https://i.dummyjson.com/data/products/90/4.jpg",
            "https://i.dummyjson.com/data/products/90/thumbnail.jpg"
        ],
        "isDeleted": false,
        "__v": 0
    },
    {
        "title": "Black Motorbike",
        "description": "Engine Type:Wet sump, Single Cylinder, Four Stroke, Two Valves, Air Cooled with SOHC (Single Over Head Cam) Chain Drive Bore & Stroke:47.0 x 49.5 MM",
        "price": 569,
        "discountPercentage": 13.63,
        "rating": 4.04,
        "stock": 115,
        "brand": "METRO 70cc Motorcycle - MR70",
        "category": "motorcycle",
        "thumbnail": "https://i.dummyjson.com/data/products/91/thumbnail.jpg",
        "images": [
            "https://i.dummyjson.com/data/products/91/1.jpg",
            "https://i.dummyjson.com/data/products/91/2.jpg",
            "https://i.dummyjson.com/data/products/91/3.jpg",
            "https://i.dummyjson.com/data/products/91/4.jpg",
            "https://i.dummyjson.com/data/products/91/thumbnail.jpg"
        ],
        "isDeleted": false,
        "__v": 0
    },
    {
        "title": "HOT SALE IN EUROPE electric racing motorcycle",
        "description": "HOT SALE IN EUROPE electric racing motorcycle electric motorcycle for sale adult electric motorcycles",
        "price": 920,
        "discountPercentage": 14.4,
        "rating": 4.19,
        "stock": 22,
        "brand": "BRAVE BULL",
        "category": "motorcycle",
        "thumbnail": "https://i.dummyjson.com/data/products/92/thumbnail.jpg",
        "images": [
            "https://i.dummyjson.com/data/products/92/1.jpg",
            "https://i.dummyjson.com/data/products/92/2.jpg",
            "https://i.dummyjson.com/data/products/92/3.jpg",
            "https://i.dummyjson.com/data/products/92/4.jpg"
        ],
        "isDeleted": false,
        "__v": 0
    },
    {
        "title": "Automatic Motor Gas Motorcycles",
        "description": "150cc 4-Stroke Motorcycle Automatic Motor Gas Motorcycles Scooter motorcycles 150cc scooter",
        "price": 1050,
        "discountPercentage": 3.34,
        "rating": 4.84,
        "stock": 127,
        "brand": "shock absorber",
        "category": "motorcycle",
        "thumbnail": "https://i.dummyjson.com/data/products/93/thumbnail.jpg",
        "images": [
            "https://i.dummyjson.com/data/products/93/1.jpg",
            "https://i.dummyjson.com/data/products/93/2.jpg",
            "https://i.dummyjson.com/data/products/93/3.jpg",
            "https://i.dummyjson.com/data/products/93/4.jpg",
            "https://i.dummyjson.com/data/products/93/thumbnail.jpg"
        ],
        "isDeleted": false,
        "__v": 0
    },
    {
        "title": "new arrivals Fashion motocross goggles",
        "description": "new arrivals Fashion motocross goggles motorcycle motocross racing motorcycle",
        "price": 900,
        "discountPercentage": 3.85,
        "rating": 4.06,
        "stock": 109,
        "brand": "JIEPOLLY",
        "category": "motorcycle",
        "thumbnail": "https://i.dummyjson.com/data/products/94/thumbnail.webp",
        "images": [
            "https://i.dummyjson.com/data/products/94/1.webp",
            "https://i.dummyjson.com/data/products/94/2.jpg",
            "https://i.dummyjson.com/data/products/94/3.jpg",
            "https://i.dummyjson.com/data/products/94/thumbnail.webp"
        ],
        "isDeleted": false,
        "__v": 0
    },
    {
        "title": "Wholesale cargo lashing Belt",
        "description": "Wholesale cargo lashing Belt Tie Down end Ratchet strap customized strap 25mm motorcycle 1500kgs with rubber handle",
        "price": 930,
        "discountPercentage": 17.67,
        "rating": 4.21,
        "stock": 144,
        "brand": "Xiangle",
        "category": "motorcycle",
        "thumbnail": "https://i.dummyjson.com/data/products/95/thumbnail.jpg",
        "images": [
            "https://i.dummyjson.com/data/products/95/1.jpg",
            "https://i.dummyjson.com/data/products/95/2.jpg",
            "https://i.dummyjson.com/data/products/95/3.jpg",
            "https://i.dummyjson.com/data/products/95/4.jpg",
            "https://i.dummyjson.com/data/products/95/thumbnail.jpg"
        ],
        "isDeleted": false,
        "__v": 0
    },
    {
        "title": "lighting ceiling kitchen",
        "description": "Wholesale slim hanging decorative kid room lighting ceiling kitchen chandeliers pendant light modern",
        "price": 30,
        "discountPercentage": 14.89,
        "rating": 4.83,
        "stock": 96,
        "brand": "lightingbrilliance",
        "category": "lighting",
        "thumbnail": "https://i.dummyjson.com/data/products/96/thumbnail.jpg",
        "images": [
            "https://i.dummyjson.com/data/products/96/1.jpg",
            "https://i.dummyjson.com/data/products/96/2.jpg",
            "https://i.dummyjson.com/data/products/96/3.jpg",
            "https://i.dummyjson.com/data/products/96/4.jpg",
            "https://i.dummyjson.com/data/products/96/thumbnail.jpg"
        ],
        "isDeleted": false,
        "__v": 0
    },
    {
        "title": "Metal Ceramic Flower",
        "description": "Metal Ceramic Flower Chandelier Home Lighting American Vintage Hanging Lighting Pendant Lamp",
        "price": 35,
        "discountPercentage": 10.94,
        "rating": 4.93,
        "stock": 146,
        "brand": "Ifei Home",
        "category": "lighting",
        "thumbnail": "https://i.dummyjson.com/data/products/97/thumbnail.jpg",
        "images": [
            "https://i.dummyjson.com/data/products/97/1.jpg",
            "https://i.dummyjson.com/data/products/97/2.jpg",
            "https://i.dummyjson.com/data/products/97/3.jpg",
            "https://i.dummyjson.com/data/products/97/4.webp",
            "https://i.dummyjson.com/data/products/97/thumbnail.jpg"
        ],
        "isDeleted": false,
        "__v": 0
    },
    {
        "title": "3 lights lndenpant kitchen islang",
        "description": "3 lights lndenpant kitchen islang dining room pendant rice paper chandelier contemporary led pendant light modern chandelier",
        "price": 34,
        "discountPercentage": 5.92,
        "rating": 4.99,
        "stock": 44,
        "brand": "DADAWU",
        "category": "lighting",
        "thumbnail": "https://i.dummyjson.com/data/products/98/thumbnail.jpg",
        "images": [
            "https://i.dummyjson.com/data/products/98/1.jpg",
            "https://i.dummyjson.com/data/products/98/2.jpg",
            "https://i.dummyjson.com/data/products/98/3.jpg",
            "https://i.dummyjson.com/data/products/98/4.jpg",
            "https://i.dummyjson.com/data/products/98/thumbnail.jpg"
        ],
        "isDeleted": false,
        "__v": 0
    },
    {
        "title": "American Vintage Wood Pendant Light",
        "description": "American Vintage Wood Pendant Light Farmhouse Antique Hanging Lamp Lampara Colgante",
        "price": 46,
        "discountPercentage": 8.84,
        "rating": 4.32,
        "stock": 138,
        "brand": "Ifei Home",
        "category": "lighting",
        "thumbnail": "https://i.dummyjson.com/data/products/99/thumbnail.jpg",
        "images": [
            "https://i.dummyjson.com/data/products/99/1.jpg",
            "https://i.dummyjson.com/data/products/99/2.jpg",
            "https://i.dummyjson.com/data/products/99/3.jpg",
            "https://i.dummyjson.com/data/products/99/4.jpg",
            "https://i.dummyjson.com/data/products/99/thumbnail.jpg"
        ],
        "isDeleted": false,
        "__v": 0
    },
    {
        "title": "Crystal chandelier maria theresa for 12 light",
        "description": "Crystal chandelier maria theresa for 12 light",
        "price": 47,
        "discountPercentage": 16,
        "rating": 4.74,
        "stock": 133,
        "brand": "YIOSI",
        "category": "lighting",
        "thumbnail": "https://i.dummyjson.com/data/products/100/thumbnail.jpg",
        "images": [
            "https://i.dummyjson.com/data/products/100/1.jpg",
            "https://i.dummyjson.com/data/products/100/2.jpg",
            "https://i.dummyjson.com/data/products/100/3.jpg",
            "https://i.dummyjson.com/data/products/100/thumbnail.jpg"
        ],
        "isDeleted": false,
        "__v": 0
    },
    {
        "title": "Iphone 16 pro",
        "description": "sadsag kdjdgsahds",
        "price": 3432,
        "discountPercentage": 23,
        "rating": 1,
        "stock": 0,
        "brand": "Apple",
        "category": "laptops",
        "thumbnail": "https://i.dummyjson.com/data/products/3/thumbnail.jpg",
        "images": [
            "https://i.dummyjson.com/data/products/3/thumbnail.jpg",
            "https://i.dummyjson.com/data/products/3/thumbnail.jpg",
            "https://i.dummyjson.com/data/products/3/thumbnail.jpg",
            "https://i.dummyjson.com/data/products/3/thumbnail.jpg"
        ],
        "isDeleted": false,
        "__v": 0
    },
    {
        "title": "Iphone 17 pro",
        "description": "sadsag kdjdgsahds",
        "price": 3432,
        "discountPercentage": 23,
        "rating": 1,
        "stock": 10,
        "brand": "Apple",
        "category": "laptops",
        "thumbnail": "https://i.dummyjson.com/data/products/3/thumbnail.jpg",
        "images": [
            "https://i.dummyjson.com/data/products/3/thumbnail.jpg",
            "https://i.dummyjson.com/data/products/3/thumbnail.jpg",
            "https://i.dummyjson.com/data/products/3/thumbnail.jpg",
            "https://i.dummyjson.com/data/products/3/thumbnail.jpg"
        ],
        "isDeleted": false,
        "__v": 0
    },
    {
        "title": "Iphone 17 pro 23",
        "description": "asdadasd hjagddsa dadasgdaskjdafd adda",
        "price": 2099,
        "discountPercentage": 12,
        "rating": 1,
        "stock": 12,
        "brand": "Apple",
        "category": "smartphones",
        "thumbnail": "https://i.dummyjson.com/data/products/10/thumbnail.jpeg",
        "images": [
            "https://i.dummyjson.com/data/products/3/thumbnail.jpg",
            "https://i.dummyjson.com/data/products/3/thumbnail.jpg",
            "https://i.dummyjson.com/data/products/3/thumbnail.jpg",
            "https://i.dummyjson.com/data/products/2/thumbnail.jpg"
        ],
        "isDeleted": false,
        "__v": 0
    }
]);
/* 2023-08-20 18:59:09 [22 ms] */ 
db('flipshopeDB').collection("products").updateOne({_id:ObjectID('64e214f13233dfef0f76ffab')},{ $set:{"isDeleted":true}})
db('flipshopeDB').collection("products").updateOne({_id:ObjectID('64e214f13233dfef0f76ffac')},{ $set:{"isDeleted":true}})
db('flipshopeDB').collection("products").updateOne({_id:ObjectID('64e214f13233dfef0f76ffad')},{ $set:{"isDeleted":true}})
;
/* 2023-08-20 19:02:00 [2 ms] */ 
db('flipshopeDB').collection("products").updateOne({_id:ObjectID('64e214f13233dfef0f76ffac')},{ $set:{"isDeleted":true}})
;
/* 2023-08-20 19:02:08 [3 ms] */ 
db('flipshopeDB').collection("products").updateOne({_id:ObjectID('64e214f13233dfef0f76ffad')},{ $set:{"isDeleted":true}})
;
/* 2023-08-20 19:02:13 [2 ms] */ 
db('flipshopeDB').collection("products").updateOne({_id:ObjectID('64e214f13233dfef0f76ffac')},{ $set:{"isDeleted":true}})
;
/* 2023-08-20 21:07:58 [18 ms] */ 
db('flipshopeDB').collection("categories").deleteMany({_id:{$in:[ObjectID('64e231fdb6e937d918b08121')]}});
/* 2023-08-20 21:11:38 [10 ms] */ 
db('flipshopeDB').collection('categories').insertMany(
[
    {
        "value": "smartphones",
        "label": "Smartphones",
        "checked": false,
        "__v": 0
    },
    {
        "value": "laptops",
        "label": "Laptops",
        "checked": false,
        "__v": 0
    },
    {
        "value": "fragrances",
        "label": "Fragrances",
        "checked": false,
        "__v": 0
    },
    {
        "value": "skincare",
        "label": "Skincare",
        "checked": false,
        "__v": 0
    },
    {
        "value": "groceries",
        "label": "Groceries",
        "checked": false,
        "__v": 0
    },
    {
        "value": "home-decoration",
        "label": "Home decoration",
        "checked": false,
        "__v": 0
    },
    {
        "value": "furniture",
        "label": "Furniture",
        "checked": false,
        "__v": 0
    },
    {
        "value": "tops",
        "label": "Tops",
        "checked": false,
        "__v": 0
    },
    {
        "value": "womens-dresses",
        "label": "Womens dresses",
        "checked": false,
        "__v": 0
    },
    {
        "value": "womens-shoes",
        "label": "Womens shoes",
        "checked": false,
        "__v": 0
    },
    {
        "value": "mens-shirts",
        "label": "Mens shirts",
        "checked": false,
        "__v": 0
    },
    {
        "value": "mens-shoes",
        "label": "Mens shoes",
        "checked": false,
        "__v": 0
    },
    {
        "value": "mens-watches",
        "label": "Mens watches",
        "checked": false,
        "__v": 0
    },
    {
        "value": "womens-watches",
        "label": "Womens watches",
        "checked": false,
        "__v": 0
    },
    {
        "value": "womens-bags",
        "label": "Womens bags",
        "checked": false,
        "__v": 0
    },
    {
        "value": "womens-jewellery",
        "label": "Womens jewellery",
        "checked": false,
        "__v": 0
    },
    {
        "value": "sunglasses",
        "label": "Sunglasses",
        "checked": false,
        "__v": 0
    },
    {
        "value": "automotive",
        "label": "Automotive",
        "checked": false,
        "__v": 0
    },
    {
        "value": "motorcycle",
        "label": "Motorcycle",
        "checked": false,
        "__v": 0
    },
    {
        "value": "lighting",
        "label": "Lighting",
        "checked": false,
        "__v": 0
    }
]);
/* 2023-08-20 21:17:13 [3 ms] */ 
db('flipshopeDB').collection("brands").deleteMany({_id:{$in:[ObjectID('64e2332343946a55972c8c1b')]}});
/* 2023-08-20 21:17:22 [24 ms] */ 
db('flipshopeDB').collection('brands').insertMany([
    {
        "value": "Apple",
        "label": "Apple",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Samsung",
        "label": "Samsung",
        "checked": false,
        "__v": 0
    },
    {
        "value": "OPPO",
        "label": "OPPO",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Huawei",
        "label": "Huawei",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Microsoft Surface",
        "label": "Microsoft Surface",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Infinix",
        "label": "Infinix",
        "checked": false,
        "__v": 0
    },
    {
        "value": "HP Pavilion",
        "label": "HP Pavilion",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Impression of Acqua Di Gio",
        "label": "Impression of Acqua Di Gio",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Royal_Mirage",
        "label": "Royal_Mirage",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Fog Scent Xpressio",
        "label": "Fog Scent Xpressio",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Al Munakh",
        "label": "Al Munakh",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Lord - Al-Rehab",
        "label": "Lord   Al Rehab",
        "checked": false,
        "__v": 0
    },
    {
        "value": "L'Oreal Paris",
        "label": "L'Oreal Paris",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Hemani Tea",
        "label": "Hemani Tea",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Dermive",
        "label": "Dermive",
        "checked": false,
        "__v": 0
    },
    {
        "value": "ROREC White Rice",
        "label": "ROREC White Rice",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Fair & Clear",
        "label": "Fair & Clear",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Saaf & Khaas",
        "label": "Saaf & Khaas",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Bake Parlor Big",
        "label": "Bake Parlor Big",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Baking Food Items",
        "label": "Baking Food Items",
        "checked": false,
        "__v": 0
    },
    {
        "value": "fauji",
        "label": "Fauji",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Dry Rose",
        "label": "Dry Rose",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Boho Decor",
        "label": "Boho Decor",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Flying Wooden",
        "label": "Flying Wooden",
        "checked": false,
        "__v": 0
    },
    {
        "value": "LED Lights",
        "label": "LED Lights",
        "checked": false,
        "__v": 0
    },
    {
        "value": "luxury palace",
        "label": "Luxury palace",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Golden",
        "label": "Golden",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Furniture Bed Set",
        "label": "Furniture Bed Set",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Ratttan Outdoor",
        "label": "Ratttan Outdoor",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Kitchen Shelf",
        "label": "Kitchen Shelf",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Multi Purpose",
        "label": "Multi Purpose",
        "checked": false,
        "__v": 0
    },
    {
        "value": "AmnaMart",
        "label": "AmnaMart",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Professional Wear",
        "label": "Professional Wear",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Soft Cotton",
        "label": "Soft Cotton",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Top Sweater",
        "label": "Top Sweater",
        "checked": false,
        "__v": 0
    },
    {
        "value": "RED MICKY MOUSE..",
        "label": "RED MICKY MOUSE..",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Digital Printed",
        "label": "Digital Printed",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Ghazi Fabric",
        "label": "Ghazi Fabric",
        "checked": false,
        "__v": 0
    },
    {
        "value": "IELGY",
        "label": "IELGY",
        "checked": false,
        "__v": 0
    },
    {
        "value": "IELGY fashion",
        "label": "IELGY fashion",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Synthetic Leather",
        "label": "Synthetic Leather",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Sandals Flip Flops",
        "label": "Sandals Flip Flops",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Maasai Sandals",
        "label": "Maasai Sandals",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Arrivals Genuine",
        "label": "Arrivals Genuine",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Vintage Apparel",
        "label": "Vintage Apparel",
        "checked": false,
        "__v": 0
    },
    {
        "value": "FREE FIRE",
        "label": "FREE FIRE",
        "checked": false,
        "__v": 0
    },
    {
        "value": "The Warehouse",
        "label": "The Warehouse",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Sneakers",
        "label": "Sneakers",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Rubber",
        "label": "Rubber",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Naviforce",
        "label": "Naviforce",
        "checked": false,
        "__v": 0
    },
    {
        "value": "SKMEI 9117",
        "label": "SKMEI 9117",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Strap Skeleton",
        "label": "Strap Skeleton",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Stainless",
        "label": "Stainless",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Eastern Watches",
        "label": "Eastern Watches",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Luxury Digital",
        "label": "Luxury Digital",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Watch Pearls",
        "label": "Watch Pearls",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Bracelet",
        "label": "Bracelet",
        "checked": false,
        "__v": 0
    },
    {
        "value": "LouisWill",
        "label": "LouisWill",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Copenhagen Luxe",
        "label": "Copenhagen Luxe",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Steal Frame",
        "label": "Steal Frame",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Darojay",
        "label": "Darojay",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Fashion Jewellery",
        "label": "Fashion Jewellery",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Cuff Butterfly",
        "label": "Cuff Butterfly",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Designer Sun Glasses",
        "label": "Designer Sun Glasses",
        "checked": false,
        "__v": 0
    },
    {
        "value": "mastar watch",
        "label": "Mastar watch",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Car Aux",
        "label": "Car Aux",
        "checked": false,
        "__v": 0
    },
    {
        "value": "W1209 DC12V",
        "label": "W1209 DC12V",
        "checked": false,
        "__v": 0
    },
    {
        "value": "TC Reusable",
        "label": "TC Reusable",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Neon LED Light",
        "label": "Neon LED Light",
        "checked": false,
        "__v": 0
    },
    {
        "value": "METRO 70cc Motorcycle - MR70",
        "label": "METRO 70cc Motorcycle   MR70",
        "checked": false,
        "__v": 0
    },
    {
        "value": "BRAVE BULL",
        "label": "BRAVE BULL",
        "checked": false,
        "__v": 0
    },
    {
        "value": "shock absorber",
        "label": "Shock absorber",
        "checked": false,
        "__v": 0
    },
    {
        "value": "JIEPOLLY",
        "label": "JIEPOLLY",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Xiangle",
        "label": "Xiangle",
        "checked": false,
        "__v": 0
    },
    {
        "value": "lightingbrilliance",
        "label": "Lightingbrilliance",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Ifei Home",
        "label": "Ifei Home",
        "checked": false,
        "__v": 0
    },
    {
        "value": "DADAWU",
        "label": "DADAWU",
        "checked": false,
        "__v": 0
    },
    {
        "value": "YIOSI",
        "label": "YIOSI",
        "checked": false,
        "__v": 0
    }
]);
/* 2023-08-20 21:17:46 [21 ms] */ 
db('flipshopeDB').collection("brands").deleteMany({_id:{$in:[ObjectID('64e2358a3233dfef0f76ffc2'),ObjectID('64e2358a3233dfef0f76ffc3'),ObjectID('64e2358a3233dfef0f76ffc4'),ObjectID('64e2358a3233dfef0f76ffc5'),ObjectID('64e2358a3233dfef0f76ffc6'),ObjectID('64e2358a3233dfef0f76ffc7'),ObjectID('64e2358a3233dfef0f76ffc8'),ObjectID('64e2358a3233dfef0f76ffc9'),ObjectID('64e2358a3233dfef0f76ffca'),ObjectID('64e2358a3233dfef0f76ffcb'),ObjectID('64e2358a3233dfef0f76ffcc'),ObjectID('64e2358a3233dfef0f76ffcd'),ObjectID('64e2358a3233dfef0f76ffce'),ObjectID('64e2358a3233dfef0f76ffcf'),ObjectID('64e2358a3233dfef0f76ffd0'),ObjectID('64e2358a3233dfef0f76ffd1'),ObjectID('64e2358a3233dfef0f76ffd2'),ObjectID('64e2358a3233dfef0f76ffd3'),ObjectID('64e2358a3233dfef0f76ffd4'),ObjectID('64e2358a3233dfef0f76ffd5'),ObjectID('64e2358a3233dfef0f76ffd6'),ObjectID('64e2358a3233dfef0f76ffd7'),ObjectID('64e2358a3233dfef0f76ffd8'),ObjectID('64e2358a3233dfef0f76ffd9'),ObjectID('64e2358a3233dfef0f76ffda'),ObjectID('64e2358a3233dfef0f76ffdb'),ObjectID('64e2358a3233dfef0f76ffdc'),ObjectID('64e2358a3233dfef0f76ffdd'),ObjectID('64e2358a3233dfef0f76ffde'),ObjectID('64e2358a3233dfef0f76ffdf'),ObjectID('64e2358a3233dfef0f76ffe0'),ObjectID('64e2358a3233dfef0f76ffe1'),ObjectID('64e2358a3233dfef0f76ffe2'),ObjectID('64e2358a3233dfef0f76ffe3'),ObjectID('64e2358a3233dfef0f76ffe4'),ObjectID('64e2358a3233dfef0f76ffe5'),ObjectID('64e2358a3233dfef0f76ffe6'),ObjectID('64e2358a3233dfef0f76ffe7'),ObjectID('64e2358a3233dfef0f76ffe8'),ObjectID('64e2358a3233dfef0f76ffe9'),ObjectID('64e2358a3233dfef0f76ffea'),ObjectID('64e2358a3233dfef0f76ffeb'),ObjectID('64e2358a3233dfef0f76ffec'),ObjectID('64e2358a3233dfef0f76ffed'),ObjectID('64e2358a3233dfef0f76ffee'),ObjectID('64e2358a3233dfef0f76ffef'),ObjectID('64e2358a3233dfef0f76fff0'),ObjectID('64e2358a3233dfef0f76fff1'),ObjectID('64e2358a3233dfef0f76fff2'),ObjectID('64e2358a3233dfef0f76fff3'),ObjectID('64e2358a3233dfef0f76fff4'),ObjectID('64e2358a3233dfef0f76fff5'),ObjectID('64e2358a3233dfef0f76fff6'),ObjectID('64e2358a3233dfef0f76fff7'),ObjectID('64e2358a3233dfef0f76fff8'),ObjectID('64e2358a3233dfef0f76fff9'),ObjectID('64e2358a3233dfef0f76fffa'),ObjectID('64e2358a3233dfef0f76fffb'),ObjectID('64e2358a3233dfef0f76fffc'),ObjectID('64e2358a3233dfef0f76fffd'),ObjectID('64e2358a3233dfef0f76fffe'),ObjectID('64e2358a3233dfef0f76ffff'),ObjectID('64e2358a3233dfef0f770000'),ObjectID('64e2358a3233dfef0f770001'),ObjectID('64e2358a3233dfef0f770002'),ObjectID('64e2358a3233dfef0f770003'),ObjectID('64e2358a3233dfef0f770004'),ObjectID('64e2358a3233dfef0f770005'),ObjectID('64e2358a3233dfef0f770006'),ObjectID('64e2358a3233dfef0f770007'),ObjectID('64e2358a3233dfef0f770008'),ObjectID('64e2358a3233dfef0f770009'),ObjectID('64e2358a3233dfef0f77000a'),ObjectID('64e2358a3233dfef0f77000b'),ObjectID('64e2358a3233dfef0f77000c'),ObjectID('64e2358a3233dfef0f77000d'),ObjectID('64e2358a3233dfef0f77000e'),ObjectID('64e2358a3233dfef0f77000f')]}});
/* 2023-08-20 21:17:53 [8 ms] */ 
db('flipshopeDB').collection('brands').insertMany(
[
    {
        "value": "Apple",
        "label": "Apple",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Samsung",
        "label": "Samsung",
        "checked": false,
        "__v": 0
    },
    {
        "value": "OPPO",
        "label": "OPPO",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Huawei",
        "label": "Huawei",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Microsoft Surface",
        "label": "Microsoft Surface",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Infinix",
        "label": "Infinix",
        "checked": false,
        "__v": 0
    },
    {
        "value": "HP Pavilion",
        "label": "HP Pavilion",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Impression of Acqua Di Gio",
        "label": "Impression of Acqua Di Gio",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Royal_Mirage",
        "label": "Royal_Mirage",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Fog Scent Xpressio",
        "label": "Fog Scent Xpressio",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Al Munakh",
        "label": "Al Munakh",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Lord - Al-Rehab",
        "label": "Lord   Al Rehab",
        "checked": false,
        "__v": 0
    },
    {
        "value": "L'Oreal Paris",
        "label": "L'Oreal Paris",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Hemani Tea",
        "label": "Hemani Tea",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Dermive",
        "label": "Dermive",
        "checked": false,
        "__v": 0
    },
    {
        "value": "ROREC White Rice",
        "label": "ROREC White Rice",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Fair & Clear",
        "label": "Fair & Clear",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Saaf & Khaas",
        "label": "Saaf & Khaas",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Bake Parlor Big",
        "label": "Bake Parlor Big",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Baking Food Items",
        "label": "Baking Food Items",
        "checked": false,
        "__v": 0
    },
    {
        "value": "fauji",
        "label": "Fauji",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Dry Rose",
        "label": "Dry Rose",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Boho Decor",
        "label": "Boho Decor",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Flying Wooden",
        "label": "Flying Wooden",
        "checked": false,
        "__v": 0
    },
    {
        "value": "LED Lights",
        "label": "LED Lights",
        "checked": false,
        "__v": 0
    },
    {
        "value": "luxury palace",
        "label": "Luxury palace",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Golden",
        "label": "Golden",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Furniture Bed Set",
        "label": "Furniture Bed Set",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Ratttan Outdoor",
        "label": "Ratttan Outdoor",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Kitchen Shelf",
        "label": "Kitchen Shelf",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Multi Purpose",
        "label": "Multi Purpose",
        "checked": false,
        "__v": 0
    },
    {
        "value": "AmnaMart",
        "label": "AmnaMart",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Professional Wear",
        "label": "Professional Wear",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Soft Cotton",
        "label": "Soft Cotton",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Top Sweater",
        "label": "Top Sweater",
        "checked": false,
        "__v": 0
    },
    {
        "value": "RED MICKY MOUSE..",
        "label": "RED MICKY MOUSE..",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Digital Printed",
        "label": "Digital Printed",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Ghazi Fabric",
        "label": "Ghazi Fabric",
        "checked": false,
        "__v": 0
    },
    {
        "value": "IELGY",
        "label": "IELGY",
        "checked": false,
        "__v": 0
    },
    {
        "value": "IELGY fashion",
        "label": "IELGY fashion",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Synthetic Leather",
        "label": "Synthetic Leather",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Sandals Flip Flops",
        "label": "Sandals Flip Flops",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Maasai Sandals",
        "label": "Maasai Sandals",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Arrivals Genuine",
        "label": "Arrivals Genuine",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Vintage Apparel",
        "label": "Vintage Apparel",
        "checked": false,
        "__v": 0
    },
    {
        "value": "FREE FIRE",
        "label": "FREE FIRE",
        "checked": false,
        "__v": 0
    },
    {
        "value": "The Warehouse",
        "label": "The Warehouse",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Sneakers",
        "label": "Sneakers",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Rubber",
        "label": "Rubber",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Naviforce",
        "label": "Naviforce",
        "checked": false,
        "__v": 0
    },
    {
        "value": "SKMEI 9117",
        "label": "SKMEI 9117",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Strap Skeleton",
        "label": "Strap Skeleton",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Stainless",
        "label": "Stainless",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Eastern Watches",
        "label": "Eastern Watches",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Luxury Digital",
        "label": "Luxury Digital",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Watch Pearls",
        "label": "Watch Pearls",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Bracelet",
        "label": "Bracelet",
        "checked": false,
        "__v": 0
    },
    {
        "value": "LouisWill",
        "label": "LouisWill",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Copenhagen Luxe",
        "label": "Copenhagen Luxe",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Steal Frame",
        "label": "Steal Frame",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Darojay",
        "label": "Darojay",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Fashion Jewellery",
        "label": "Fashion Jewellery",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Cuff Butterfly",
        "label": "Cuff Butterfly",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Designer Sun Glasses",
        "label": "Designer Sun Glasses",
        "checked": false,
        "__v": 0
    },
    {
        "value": "mastar watch",
        "label": "Mastar watch",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Car Aux",
        "label": "Car Aux",
        "checked": false,
        "__v": 0
    },
    {
        "value": "W1209 DC12V",
        "label": "W1209 DC12V",
        "checked": false,
        "__v": 0
    },
    {
        "value": "TC Reusable",
        "label": "TC Reusable",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Neon LED Light",
        "label": "Neon LED Light",
        "checked": false,
        "__v": 0
    },
    {
        "value": "METRO 70cc Motorcycle - MR70",
        "label": "METRO 70cc Motorcycle   MR70",
        "checked": false,
        "__v": 0
    },
    {
        "value": "BRAVE BULL",
        "label": "BRAVE BULL",
        "checked": false,
        "__v": 0
    },
    {
        "value": "shock absorber",
        "label": "Shock absorber",
        "checked": false,
        "__v": 0
    },
    {
        "value": "JIEPOLLY",
        "label": "JIEPOLLY",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Xiangle",
        "label": "Xiangle",
        "checked": false,
        "__v": 0
    },
    {
        "value": "lightingbrilliance",
        "label": "Lightingbrilliance",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Ifei Home",
        "label": "Ifei Home",
        "checked": false,
        "__v": 0
    },
    {
        "value": "DADAWU",
        "label": "DADAWU",
        "checked": false,
        "__v": 0
    },
    {
        "value": "YIOSI",
        "label": "YIOSI",
        "checked": false,
        "__v": 0
    }
]);
/* 2023-08-20 21:18:17 [7 ms] */ 
db('flipshopeDB').collection("brands").deleteMany({_id:{$in:[ObjectID('64e235a93233dfef0f770010'),ObjectID('64e235a93233dfef0f770011'),ObjectID('64e235a93233dfef0f770012'),ObjectID('64e235a93233dfef0f770013'),ObjectID('64e235a93233dfef0f770014'),ObjectID('64e235a93233dfef0f770015'),ObjectID('64e235a93233dfef0f770016'),ObjectID('64e235a93233dfef0f770017'),ObjectID('64e235a93233dfef0f770018'),ObjectID('64e235a93233dfef0f770019'),ObjectID('64e235a93233dfef0f77001a'),ObjectID('64e235a93233dfef0f77001b'),ObjectID('64e235a93233dfef0f77001c'),ObjectID('64e235a93233dfef0f77001d'),ObjectID('64e235a93233dfef0f77001e'),ObjectID('64e235a93233dfef0f77001f'),ObjectID('64e235a93233dfef0f770020'),ObjectID('64e235a93233dfef0f770021'),ObjectID('64e235a93233dfef0f770022'),ObjectID('64e235a93233dfef0f770023'),ObjectID('64e235a93233dfef0f770024'),ObjectID('64e235a93233dfef0f770025'),ObjectID('64e235a93233dfef0f770026'),ObjectID('64e235a93233dfef0f770027'),ObjectID('64e235a93233dfef0f770028'),ObjectID('64e235a93233dfef0f770029'),ObjectID('64e235a93233dfef0f77002a'),ObjectID('64e235a93233dfef0f77002b'),ObjectID('64e235a93233dfef0f77002c'),ObjectID('64e235a93233dfef0f77002d'),ObjectID('64e235a93233dfef0f77002e'),ObjectID('64e235a93233dfef0f77002f'),ObjectID('64e235a93233dfef0f770030'),ObjectID('64e235a93233dfef0f770031'),ObjectID('64e235a93233dfef0f770032'),ObjectID('64e235a93233dfef0f770033'),ObjectID('64e235a93233dfef0f770034'),ObjectID('64e235a93233dfef0f770035'),ObjectID('64e235a93233dfef0f770036'),ObjectID('64e235a93233dfef0f770037'),ObjectID('64e235a93233dfef0f770038'),ObjectID('64e235a93233dfef0f770039'),ObjectID('64e235a93233dfef0f77003a'),ObjectID('64e235a93233dfef0f77003b'),ObjectID('64e235a93233dfef0f77003c'),ObjectID('64e235a93233dfef0f77003d'),ObjectID('64e235a93233dfef0f77003e'),ObjectID('64e235a93233dfef0f77003f'),ObjectID('64e235a93233dfef0f770040'),ObjectID('64e235a93233dfef0f770041'),ObjectID('64e235a93233dfef0f770042'),ObjectID('64e235a93233dfef0f770043'),ObjectID('64e235a93233dfef0f770044'),ObjectID('64e235a93233dfef0f770045'),ObjectID('64e235a93233dfef0f770046'),ObjectID('64e235a93233dfef0f770047'),ObjectID('64e235a93233dfef0f770048'),ObjectID('64e235a93233dfef0f770049'),ObjectID('64e235a93233dfef0f77004a'),ObjectID('64e235a93233dfef0f77004b'),ObjectID('64e235a93233dfef0f77004c'),ObjectID('64e235a93233dfef0f77004d'),ObjectID('64e235a93233dfef0f77004e'),ObjectID('64e235a93233dfef0f77004f'),ObjectID('64e235a93233dfef0f770050'),ObjectID('64e235a93233dfef0f770051'),ObjectID('64e235a93233dfef0f770052'),ObjectID('64e235a93233dfef0f770053'),ObjectID('64e235a93233dfef0f770054'),ObjectID('64e235a93233dfef0f770055'),ObjectID('64e235a93233dfef0f770056'),ObjectID('64e235a93233dfef0f770057'),ObjectID('64e235a93233dfef0f770058'),ObjectID('64e235a93233dfef0f770059'),ObjectID('64e235a93233dfef0f77005a'),ObjectID('64e235a93233dfef0f77005b'),ObjectID('64e235a93233dfef0f77005c'),ObjectID('64e235a93233dfef0f77005d')]}});
/* 2023-08-20 21:18:22 [9 ms] */ 
db('flipshopeDB').collection('brands').insertMany(
[
    {
        "value": "Apple",
        "label": "Apple",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Samsung",
        "label": "Samsung",
        "checked": false,
        "__v": 0
    },
    {
        "value": "OPPO",
        "label": "OPPO",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Huawei",
        "label": "Huawei",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Microsoft Surface",
        "label": "Microsoft Surface",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Infinix",
        "label": "Infinix",
        "checked": false,
        "__v": 0
    },
    {
        "value": "HP Pavilion",
        "label": "HP Pavilion",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Impression of Acqua Di Gio",
        "label": "Impression of Acqua Di Gio",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Royal_Mirage",
        "label": "Royal_Mirage",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Fog Scent Xpressio",
        "label": "Fog Scent Xpressio",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Al Munakh",
        "label": "Al Munakh",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Lord - Al-Rehab",
        "label": "Lord   Al Rehab",
        "checked": false,
        "__v": 0
    },
    {
        "value": "L'Oreal Paris",
        "label": "L'Oreal Paris",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Hemani Tea",
        "label": "Hemani Tea",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Dermive",
        "label": "Dermive",
        "checked": false,
        "__v": 0
    },
    {
        "value": "ROREC White Rice",
        "label": "ROREC White Rice",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Fair & Clear",
        "label": "Fair & Clear",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Saaf & Khaas",
        "label": "Saaf & Khaas",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Bake Parlor Big",
        "label": "Bake Parlor Big",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Baking Food Items",
        "label": "Baking Food Items",
        "checked": false,
        "__v": 0
    },
    {
        "value": "fauji",
        "label": "Fauji",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Dry Rose",
        "label": "Dry Rose",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Boho Decor",
        "label": "Boho Decor",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Flying Wooden",
        "label": "Flying Wooden",
        "checked": false,
        "__v": 0
    },
    {
        "value": "LED Lights",
        "label": "LED Lights",
        "checked": false,
        "__v": 0
    },
    {
        "value": "luxury palace",
        "label": "Luxury palace",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Golden",
        "label": "Golden",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Furniture Bed Set",
        "label": "Furniture Bed Set",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Ratttan Outdoor",
        "label": "Ratttan Outdoor",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Kitchen Shelf",
        "label": "Kitchen Shelf",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Multi Purpose",
        "label": "Multi Purpose",
        "checked": false,
        "__v": 0
    },
    {
        "value": "AmnaMart",
        "label": "AmnaMart",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Professional Wear",
        "label": "Professional Wear",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Soft Cotton",
        "label": "Soft Cotton",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Top Sweater",
        "label": "Top Sweater",
        "checked": false,
        "__v": 0
    },
    {
        "value": "RED MICKY MOUSE..",
        "label": "RED MICKY MOUSE..",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Digital Printed",
        "label": "Digital Printed",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Ghazi Fabric",
        "label": "Ghazi Fabric",
        "checked": false,
        "__v": 0
    },
    {
        "value": "IELGY",
        "label": "IELGY",
        "checked": false,
        "__v": 0
    },
    {
        "value": "IELGY fashion",
        "label": "IELGY fashion",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Synthetic Leather",
        "label": "Synthetic Leather",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Sandals Flip Flops",
        "label": "Sandals Flip Flops",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Maasai Sandals",
        "label": "Maasai Sandals",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Arrivals Genuine",
        "label": "Arrivals Genuine",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Vintage Apparel",
        "label": "Vintage Apparel",
        "checked": false,
        "__v": 0
    },
    {
        "value": "FREE FIRE",
        "label": "FREE FIRE",
        "checked": false,
        "__v": 0
    },
    {
        "value": "The Warehouse",
        "label": "The Warehouse",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Sneakers",
        "label": "Sneakers",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Rubber",
        "label": "Rubber",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Naviforce",
        "label": "Naviforce",
        "checked": false,
        "__v": 0
    },
    {
        "value": "SKMEI 9117",
        "label": "SKMEI 9117",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Strap Skeleton",
        "label": "Strap Skeleton",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Stainless",
        "label": "Stainless",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Eastern Watches",
        "label": "Eastern Watches",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Luxury Digital",
        "label": "Luxury Digital",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Watch Pearls",
        "label": "Watch Pearls",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Bracelet",
        "label": "Bracelet",
        "checked": false,
        "__v": 0
    },
    {
        "value": "LouisWill",
        "label": "LouisWill",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Copenhagen Luxe",
        "label": "Copenhagen Luxe",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Steal Frame",
        "label": "Steal Frame",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Darojay",
        "label": "Darojay",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Fashion Jewellery",
        "label": "Fashion Jewellery",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Cuff Butterfly",
        "label": "Cuff Butterfly",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Designer Sun Glasses",
        "label": "Designer Sun Glasses",
        "checked": false,
        "__v": 0
    },
    {
        "value": "mastar watch",
        "label": "Mastar watch",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Car Aux",
        "label": "Car Aux",
        "checked": false,
        "__v": 0
    },
    {
        "value": "W1209 DC12V",
        "label": "W1209 DC12V",
        "checked": false,
        "__v": 0
    },
    {
        "value": "TC Reusable",
        "label": "TC Reusable",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Neon LED Light",
        "label": "Neon LED Light",
        "checked": false,
        "__v": 0
    },
    {
        "value": "METRO 70cc Motorcycle - MR70",
        "label": "METRO 70cc Motorcycle   MR70",
        "checked": false,
        "__v": 0
    },
    {
        "value": "BRAVE BULL",
        "label": "BRAVE BULL",
        "checked": false,
        "__v": 0
    },
    {
        "value": "shock absorber",
        "label": "Shock absorber",
        "checked": false,
        "__v": 0
    },
    {
        "value": "JIEPOLLY",
        "label": "JIEPOLLY",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Xiangle",
        "label": "Xiangle",
        "checked": false,
        "__v": 0
    },
    {
        "value": "lightingbrilliance",
        "label": "Lightingbrilliance",
        "checked": false,
        "__v": 0
    },
    {
        "value": "Ifei Home",
        "label": "Ifei Home",
        "checked": false,
        "__v": 0
    },
    {
        "value": "DADAWU",
        "label": "DADAWU",
        "checked": false,
        "__v": 0
    },
    {
        "value": "YIOSI",
        "label": "YIOSI",
        "checked": false,
        "__v": 0
    }
]);
/* 2023-08-20 21:21:07 [9 ms] */ 
db('flipshopeDB').collection("brands").deleteMany({_id:{$in:[ObjectID('64e2364943946a55972c8c21')]}});
/* 2023-08-20 21:21:24 [4 ms] */ 
db('flipshopeDB').collection("categories").deleteMany({_id:{$in:[ObjectID('64e2365b43946a55972c8c23')]}});
/* 2023-08-21 23:04:53 [25 ms] */ 
db('flipshopeDB').collection("users").updateOne({_id:ObjectID('64e394a9e6457392bfac5b61')},{ $set:{"password":"Tb@24.com"}})
;
/* 2023-08-22 22:37:04 [24 ms] */ 
db('flipshopeDB').collection("users").updateOne({_id:ObjectID('64e394a9e6457392bfac5b61')},{ $set:{"cartItems":}})
;
/* 2023-08-22 22:37:19 [7 ms] */ 
db('flipshopeDB').collection("users").updateOne({_id:ObjectID('64e394a9e6457392bfac5b61')},{ $set:{"cartItems":(NULL)}})
;
/* 2023-08-22 22:37:24 [4 ms] */ 
db('flipshopeDB').collection("users").updateOne({_id:ObjectID('64e394a9e6457392bfac5b61')},{ $set:{"cartItems":null}})
;
/* 2023-08-22 23:19:57 [4 ms] */ 
db('flipshopeDB').collection("carts").deleteMany({_id:{$in:[ObjectID('64e4f4b748caf75b11b87d65'),ObjectID('64e4f4e348caf75b11b87d72'),ObjectID('64e4f4ec48caf75b11b87d75')]}});
/* 2023-08-22 23:22:09 [4 ms] */ 
db('flipshopeDB').collection("carts").deleteMany({_id:{$in:[ObjectID('64e4f552bab8ff2d4e119260')]}});
/* 2023-08-22 23:28:02 [3 ms] */ 
db('flipshopeDB').collection("carts").deleteMany({_id:{$in:[ObjectID('64e4f5d2fbe794d7bcc3a301'),ObjectID('64e4f6386b8a312f9803cd3a'),ObjectID('64e4f6b752b236d6a0d61b82'),ObjectID('64e4f6b952b236d6a0d61b84'),ObjectID('64e4f6ea16382721fa101d07'),ObjectID('64e4f703f0b4c2c45313848c')]}});
/* 2023-08-22 23:31:57 [3 ms] */ 
db('flipshopeDB').collection("carts").deleteMany({_id:{$in:[ObjectID('64e4ceaeded2d34571cd637e'),ObjectID('64e4ecb169759897ce258047'),ObjectID('64e4ecb969759897ce258053'),ObjectID('64e4f233d7abf04d7b57b59d'),ObjectID('64e4f3ac6eb9da48d1f2bbfd')]}});
/* 2023-08-22 23:32:06 [4 ms] */ 
db('flipshopeDB').collection("carts").deleteMany({_id:{$in:[ObjectID('64e4f7388acfbf874b80a150'),ObjectID('64e4f7c28acfbf874b80a16c')]}});
/* 2023-08-22 23:37:00 [2 ms] */ 
db('flipshopeDB').collection("carts").deleteMany({_id:{$in:[ObjectID('64e4f83e8acfbf874b80a1a1'),ObjectID('64e4f8b38acfbf874b80a1b5'),ObjectID('64e4f92383de05112de2609c')]}});
