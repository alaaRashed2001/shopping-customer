import 'package:online_store_customers/Models/category_model.dart';
import 'package:online_store_customers/Models/product_model.dart';
import 'package:online_store_customers/Models/sub_category_model.dart';

final List<CategoryModel> dummyCategories = [
  CategoryModel(
    id: 1,
    name: 'Electronics',
    subcategories: [
      SubcategoryModel(
        id: 1,
        name: 'Phones',
        products: [
          ProductModel(
            id: 1,
            title: "Laptops",
            price: 109.95,
            description:
            "Fjallraven - Foldsack No. 1 Backpack, Fits 15 Laptops Your perfect pack for everyday use and walks in the forest. Stash your laptop (up to 15 inches) in the padded sleeve, your everyday",
           // category: "men's clothing",
            image: "https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg",
            location: "bit lid shop",
          ),
         // ProductModel(id: 2, name: 'Samsung Galaxy S21', price: 799.99),
        ],
      ),
      SubcategoryModel(
        id: 2,
        name: 'Laptops',
        products: [
          ProductModel(
            id: 9,
            title: "USB 3.0",
            price: 64,
          description: "USB 3.0 and USB 2.0 Compatibility Fast data transfers Improve PC Performance High Capacity; Compatibility Formatted NTFS for Windows 10, Windows 8.1, Windows 7; Reformatting may be required for other operating systems; Compatibility may vary depending on user’s hardware configuration and operating system",
//category: "electronics",
image: "https://fakestoreapi.com/img/61IBBVJvSDL._AC_SY879_.jpg",
            location: "bit lid shop",
          ),

       //   Product(id: 'p3', name: 'MacBook Pro', price: 1299.99),
       //   Product(id: 'p4', name: 'Dell XPS 13', price: 999.99),
        ],
      ),
    ],
  ),
  CategoryModel(
    id: 2,
    name: 'Fashion',
    subcategories: [
      SubcategoryModel(
        id: 3,
        name: 'Men',
        products: [
          ProductModel(
            id: 1,
            title: "Laptops",
            price: 109.95,
            description:
            "Your perfect pack for everyday use and walks in the forest. Stash your laptop (up to 15 inches) in the padded sleeve, your everyday",
          //  category: "men's clothing",
            image: "https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg",
            location: "bit lid shop",
          ),
         // Product(id: 'p6', name: 'Sneakers', price: 89.99),
        ],
      ),
      SubcategoryModel(
        id: 4,
        name: 'Women',
        products: [
          ProductModel(
            id: 11,
            title: 'Dress',
            price: 79.99,
            description:
            "Your perfect pack for everyday use and walks in the forest. Stash your laptop",
           // category: "men's clothing",
            image: "https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg",
            location: "bit lid shop",
          ),

         // Product(id: 'p8', name: 'Handbag', price: 149.99),
        ],
      ),
    ],
  ),
];

//////////////
//  import 'package:online_store_customers/Models/product_model.dart';
//
// List<ProductModel> items = [

//
//   ProductModel(
//     id: 2,
//     title: "Mens Casual Premium Slim Fit T-Shirts ",
//     price: 22.3,
//     description: "Slim-fitting style, contrast raglan long sleeve, three-button henley placket, light weight & soft fabric for breathable and comfortable wearing. And Solid stitched shirts with round neck made for durability and a great fit for casual fashion wear and diehard baseball fans. The Henley style round neckline includes a three-button placket.",
//     category: "men's clothing",
//     image: "https://fakestoreapi.com/img/71-3HjGNDUL._AC_SY879._SX._UX._SY._UY_.jpg",
//     location: "bit lid shop",
//   ),
// ];
//
//
//  //   //   ProductModel(
//  //   //     id: 'Apricot',
//  //   //     title: 'Apricot',
//  //   //     price: 0.99,
//  //   //     salePrice: 0.49,
//  //   //     imageUrl: 'https://i.ibb.co/F0s3FHQ/Apricots.png',
//  //   //     productCategoryName: 'Fruits',
//  //   //     isOnSale: true,
//  //   //     isPiece: false,
//  //   //   ),
//  //   //   ProductModel(
//  //   //     id: 'Avocado',
//  //   //     title: 'Avocado',
//  //   //     price: 0.88,
//  //   //     salePrice: 0.5,
//  //   //     imageUrl: 'https://i.ibb.co/9VKXw5L/Avocat.png',
//  //   //     productCategoryName: 'Fruits',
//  //   //     isOnSale: false,
//  //   //     isPiece: true,
//  //   //   ),
//  //   //   ProductModel(
//  //   //     id: 'Black grapes',
//  //   //     title: 'Black grapes',
//  //   //     price: 1.22,
//  //   //     salePrice: 0.7,
//  //   //     imageUrl: 'https://i.ibb.co/c6w5zrC/Black-Grapes-PNG-Photos.png',
//  //   //     productCategoryName: 'Fruits',
//  //   //     isOnSale: true,
//  //   //     isPiece: false,
//  //   //   ),
//  //   //   ProductModel(
//  //   //     id: 'Fresh_green_grape',
//  //   //     title: 'Fresh green grape',
//  //   //     price: 1.5,
//  //   //     salePrice: 0.5,
//  //   //     imageUrl: 'https://i.ibb.co/HKx2bsp/Fresh-green-grape.png',
//  //   //     productCategoryName: 'Fruits',
//  //   //     isOnSale: true,
//  //   //     isPiece: false,
//  //   //   ),
//  //   //   ProductModel(
//  //   //     id: 'Green grape',
//  //   //     title: 'Green grape',
//  //   //     price: 0.99,
//  //   //     salePrice: 0.4,
//  //   //     imageUrl: 'https://i.ibb.co/bHKtc33/grape-green.png',
//  //   //     productCategoryName: 'Fruits',
//  //   //     isOnSale: false,
//  //   //     isPiece: false,
//  //   //   ),
//  //   //   ProductModel(
//  //   //     id: 'Red apple',
//  //   //     title: 'Red apple',
//  //   //     price: 0.6,
//  //   //     salePrice: 0.2,
//  //   //     imageUrl: 'https://i.ibb.co/crwwSG2/red-apple.png',
//  //   //     productCategoryName: 'Fruits',
//  //   //     isOnSale: true,
//  //   //     isPiece: false,
//  //   //   ),
//  //   //   // Vegi
//  //   //   ProductModel(
//  //   //     id: 'Carottes',
//  //   //     title: 'Carottes',
//  //   //     price: 0.99,
//  //   //     salePrice: 0.5,
//  //   //     imageUrl: 'https://i.ibb.co/TRbNL3c/Carottes.png',
//  //   //     productCategoryName: 'Vegetables',
//  //   //     isOnSale: true,
//  //   //     isPiece: false,
//  //   //   ),
//  //   //   ProductModel(
//  //   //     id: 'Cauliflower',
//  //   //     title: 'Cauliflower',
//  //   //     price: 1.99,
//  //   //     salePrice: 0.99,
//  //   //     imageUrl: 'https://i.ibb.co/xGWf2rH/Cauliflower.png',
//  //   //     productCategoryName: 'Vegetables',
//  //   //     isOnSale: false,
//  //   //     isPiece: true,
//  //   //   ),
//  //   //   ProductModel(
//  //   //     id: 'Cucumber',
//  //   //     title: 'Cucumber',
//  //   //     price: 0.99,
//  //   //     salePrice: 0.5,
//  //   //     imageUrl: 'https://i.ibb.co/kDL5GKg/cucumbers.png',
//  //   //     productCategoryName: 'Vegetables',
//  //   //     isOnSale: false,
//  //   //     isPiece: false,
//  //   //   ),
//  //   //   ProductModel(
//  //   //     id: 'Jalape',
//  //   //     title: 'Jalape',
//  //   //     price: 1.99,
//  //   //     salePrice: 0.89,
//  //   //     imageUrl: 'https://i.ibb.co/Dtk1YP8/Jalape-o.png',
//  //   //     productCategoryName: 'Vegetables',
//  //   //     isOnSale: false,
//  //   //     isPiece: false,
//  //   //   ),
//  //   //   ProductModel(
//  //   //     id: 'Long yam',
//  //   //     title: 'Long yam',
//  //   //     price: 2.99,
//  //   //     salePrice: 1.59,
//  //   //     imageUrl: 'https://i.ibb.co/V3MbcST/Long-yam.png',
//  //   //     productCategoryName: 'Vegetables',
//  //   //     isOnSale: false,
//  //   //     isPiece: false,
//  //   //   ),
//  //   //   ProductModel(
//  //   //     id: 'Onions',
//  //   //     title: 'Onions',
//  //   //     price: 0.59,
//  //   //     salePrice: 0.28,
//  //   //     imageUrl: 'https://i.ibb.co/GFvm1Zd/Onions.png',
//  //   //     productCategoryName: 'Vegetables',
//  //   //     isOnSale: false,
//  //   //     isPiece: false,
//  //   //   ),
//  //   //   ProductModel(
//  //   //     id: 'Plantain-flower',
//  //   //     title: 'Plantain-flower',
//  //   //     price: 0.99,
//  //   //     salePrice: 0.389,
//  //   //     imageUrl: 'https://i.ibb.co/RBdq0PD/Plantain-flower.png',
//  //   //     productCategoryName: 'Vegetables',
//  //   //     isOnSale: false,
//  //   //     isPiece: true,
//  //   //   ),
//  //   //   ProductModel(
//  //   //     id: 'Potato',
//  //   //     title: 'Potato',
//  //   //     price: 0.99,
//  //   //     salePrice: 0.59,
//  //   //     imageUrl: 'https://i.ibb.co/wRgtW55/Potato.png',
//  //   //     productCategoryName: 'Vegetables',
//  //   //     isOnSale: true,
//  //   //     isPiece: false,
//  //   //   ),
//  //   //   ProductModel(
//  //   //     id: 'Radish',
//  //   //     title: 'Radish',
//  //   //     price: 0.99,
//  //   //     salePrice: 0.79,
//  //   //     imageUrl: 'https://i.ibb.co/YcN4ZsD/Radish.png',
//  //   //     productCategoryName: 'Vegetables',
//  //   //     isOnSale: false,
//  //   //     isPiece: false,
//  //   //   ),
//  //   //   ProductModel(
//  //   //     id: 'Red peppers',
//  //   //     title: 'Red peppers',
//  //   //     price: 0.99,
//  //   //     salePrice: 0.57,
//  //   //     imageUrl: 'https://i.ibb.co/JthGdkh/Red-peppers.png',
//  //   //     productCategoryName: 'Vegetables',
//  //   //     isOnSale: false,
//  //   //     isPiece: false,
//  //   //   ),
//  //   //   ProductModel(
//  //   //     id: 'Squash',
//  //   //     title: 'Squash',
//  //   //     price: 3.99,
//  //   //     salePrice: 2.99,
//  //   //     imageUrl: 'https://i.ibb.co/p1V8sq9/Squash.png',
//  //   //     productCategoryName: 'Vegetables',
//  //   //     isOnSale: true,
//  //   //     isPiece: true,
//  //   //   ),
//  //   //   ProductModel(
//  //   //     id: 'Tomatoes',
//  //   //     title: 'Tomatoes',
//  //   //     price: 0.99,
//  //   //     salePrice: 0.39,
//  //   //     imageUrl: 'https://i.ibb.co/PcP9xfK/Tomatoes.png',
//  //   //     productCategoryName: 'Vegetables',
//  //   //     isOnSale: true,
//  //   //     isPiece: false,
//  //   //   ),
//  //   //   // Grains
//  //   //   ProductModel(
//  //   //     id: 'Corn-cobs',
//  //   //     title: 'Corn-cobs',
//  //   //     price: 0.29,
//  //   //     salePrice: 0.19,
//  //   //     imageUrl: 'https://i.ibb.co/8PhwVYZ/corn-cobs.png',
//  //   //     productCategoryName: 'Grains',
//  //   //     isOnSale: false,
//  //   //     isPiece: true,
//  //   //   ),
//  //   //   ProductModel(
//  //   //     id: 'Peas',
//  //   //     title: 'Peas',
//  //   //     price: 0.99,
//  //   //     salePrice: 0.49,
//  //   //     imageUrl: 'https://i.ibb.co/7GHM7Dp/peas.png',
//  //   //     productCategoryName: 'Grains',
//  //   //     isOnSale: false,
//  //   //     isPiece: false,
//  //   //   ),
//  //   //   // Herbs
//  //   //   ProductModel(
//  //   //     id: 'Asparagus',
//  //   //     title: 'Asparagus',
//  //   //     price: 6.99,
//  //   //     salePrice: 4.99,
//  //   //     imageUrl: 'https://i.ibb.co/RYRvx3W/Asparagus.png',
//  //   //     productCategoryName: 'Herbs',
//  //   //     isOnSale: false,
//  //   //     isPiece: false,
//  //   //   ),
//  //   //   ProductModel(
//  //   //     id: 'Brokoli',
//  //   //     title: 'Brokoli',
//  //   //     price: 0.99,
//  //   //     salePrice: 0.89,
//  //   //     imageUrl: 'https://i.ibb.co/KXTtrYB/Brokoli.png',
//  //   //     productCategoryName: 'Herbs',
//  //   //     isOnSale: true,
//  //   //     isPiece: true,
//  //   //   ),
//  //   //   ProductModel(
//  //   //     id: 'Buk-choy',
//  //   //     title: 'Buk-choy',
//  //   //     price: 1.99,
//  //   //     salePrice: 0.99,
//  //   //     imageUrl: 'https://i.ibb.co/MNDxNnm/Buk-choy.png',
//  //   //     productCategoryName: 'Herbs',
//  //   //     isOnSale: true,
//  //   //     isPiece: true,
//  //   //   ),
//  //   //   ProductModel(
//  //   //     id: 'Chinese-cabbage-wombok',
//  //   //     title: 'Chinese-cabbage-wombok',
//  //   //     price: 0.99,
//  //   //     salePrice: 0.5,
//  //   //     imageUrl: 'https://i.ibb.co/7yzjHVy/Chinese-cabbage-wombok.png',
//  //   //     productCategoryName: 'Herbs',
//  //   //     isOnSale: false,
//  //   //     isPiece: true,
//  //   //   ),
//  //   //   ProductModel(
//  //   //     id: 'Kangkong',
//  //   //     title: 'Kangkong',
//  //   //     price: 0.99,
//  //   //     salePrice: 0.5,
//  //   //     imageUrl: 'https://i.ibb.co/HDSrR2Y/Kangkong.png',
//  //   //     productCategoryName: 'Herbs',
//  //   //     isOnSale: false,
//  //   //     isPiece: true,
//  //   //   ),
//  //   //   ProductModel(
//  //   //     id: 'Leek',
//  //   //     title: 'Leek',
//  //   //     price: 0.99,
//  //   //     salePrice: 0.5,
//  //   //     imageUrl: 'https://i.ibb.co/Pwhqkh6/Leek.png',
//  //   //     productCategoryName: 'Herbs',
//  //   //     isOnSale: false,
//  //   //     isPiece: true,
//  //   //   ),
//  //   //   ProductModel(
//  //   //     id: 'Spinach',
//  //   //     title: 'Spinach',
//  //   //     price: 0.89,
//  //   //     salePrice: 0.59,
//  //   //     imageUrl: 'https://i.ibb.co/bbjvgcD/Spinach.png',
//  //   //     productCategoryName: 'Herbs',
//  //   //     isOnSale: true,
//  //   //     isPiece: true,
//  //   //   ),
//  //   //   ProductModel(
//  //   //     id: 'Almond',
//  //   //     title: 'Almond',
//  //   //     price: 8.99,
//  //   //     salePrice: 6.5,
//  //   //     imageUrl: 'https://i.ibb.co/c8QtSr2/almand.jpg',
//  //   //     productCategoryName: 'Nuts',
//  //   //     isOnSale: true,
//  //   //     isPiece: false,
//  //   //   ),
//  //   // ];
//   // {
//   //   "id": 3,
//   //   "title": "Mens Cotton Jacket",
//   //   "price": 55.99,
//   //   "description": "great outerwear jackets for Spring/Autumn/Winter, suitable for many occasions, such as working, hiking, camping, mountain/rock climbing, cycling, traveling or other outdoors. Good gift choice for you or your family member. A warm hearted love to Father, husband or son in this thanksgiving or Christmas Day.",
//   //   "category": "men's clothing",
//   //   "image": "https://fakestoreapi.com/img/71li-ujtlUL._AC_UX679_.jpg",
//   //   "rating": {
//   //     "rate": 4.7,
//   //     "count": 500
//   //   }
//   // },
//   // {
//   //   "id": 4,
//   //   "title": "Mens Casual Slim Fit",
//   //   "price": 15.99,
//   //   "description": "The color could be slightly different between on the screen and in practice. / Please note that body builds vary by person, therefore, detailed size information should be reviewed below on the product description.",
//   //   "category": "men's clothing",
//   //   "image": "https://fakestoreapi.com/img/71YXzeOuslL._AC_UY879_.jpg",
//   //   "rating": {
//   //     "rate": 2.1,
//   //     "count": 430
//   //   }
//   // },
//   // {
//   //   "id": 5,
//   //   "title": "John Hardy Women's Legends Naga Gold & Silver Dragon Station Chain Bracelet",
//   //   "price": 695,
//   //   "description": "From our Legends Collection, the Naga was inspired by the mythical water dragon that protects the ocean's pearl. Wear facing inward to be bestowed with love and abundance, or outward for protection.",
//   //   "category": "jewelery",
//   //   "image": "https://fakestoreapi.com/img/71pWzhdJNwL._AC_UL640_QL65_ML3_.jpg",
//   //   "rating": {
//   //     "rate": 4.6,
//   //     "count": 400
//   //   }
//   // },
//   // {
//   //   "id": 6,
//   //   "title": "Solid Gold Petite Micropave ",
//   //   "price": 168,
//   //   "description": "Satisfaction Guaranteed. Return or exchange any order within 30 days.Designed and sold by Hafeez Center in the United States. Satisfaction Guaranteed. Return or exchange any order within 30 days.",
//   //   "category": "jewelery",
//   //   "image": "https://fakestoreapi.com/img/61sbMiUnoGL._AC_UL640_QL65_ML3_.jpg",
//   //   "rating": {
//   //     "rate": 3.9,
//   //     "count": 70
//   //   }
//   // },
//   // {
//   //   "id": 7,
//   //   "title": "White Gold Plated Princess",
//   //   "price": 9.99,
//   //   "description": "Classic Created Wedding Engagement Solitaire Diamond Promise Ring for Her. Gifts to spoil your love more for Engagement, Wedding, Anniversary, Valentine's Day...",
//   //   "category": "jewelery",
//   //   "image": "https://fakestoreapi.com/img/71YAIFU48IL._AC_UL640_QL65_ML3_.jpg",
//   //   "rating": {
//   //     "rate": 3,
//   //     "count": 400
//   //   }
//   // },
//   // {
//   //   "id": 8,
//   //   "title": "Pierced Owl Rose Gold Plated Stainless Steel Double",
//   //   "price": 10.99,
//   //   "description": "Rose Gold Plated Double Flared Tunnel Plug Earrings. Made of 316L Stainless Steel",
//   //   "category": "jewelery",
//   //   "image": "https://fakestoreapi.com/img/51UDEzMJVpL._AC_UL640_QL65_ML3_.jpg",
//   //   "rating": {
//   //     "rate": 1.9,
//   //     "count": 100
//   //   }
//   // },
//   // {
//   //   "id": 9,
//   //   "title": "WD 2TB Elements Portable External Hard Drive - USB 3.0 ",
//   //   "price": 64,
//   //   "description": "USB 3.0 and USB 2.0 Compatibility Fast data transfers Improve PC Performance High Capacity; Compatibility Formatted NTFS for Windows 10, Windows 8.1, Windows 7; Reformatting may be required for other operating systems; Compatibility may vary depending on user’s hardware configuration and operating system",
//   //   "category": "electronics",
//   //   "image": "https://fakestoreapi.com/img/61IBBVJvSDL._AC_SY879_.jpg",
//   //   "rating": {
//   //     "rate": 3.3,
//   //     "count": 203
//   //   }
//   // },
//   // {
//   //   "id": 10,
//   //   "title": "SanDisk SSD PLUS 1TB Internal SSD - SATA III 6 Gb/s",
//   //   "price": 109,
//   //   "description": "Easy upgrade for faster boot up, shutdown, application load and response (As compared to 5400 RPM SATA 2.5” hard drive; Based on published specifications and internal benchmarking tests using PCMark vantage scores) Boosts burst write performance, making it ideal for typical PC workloads The perfect balance of performance and reliability Read/write speeds of up to 535MB/s/450MB/s (Based on internal testing; Performance may vary depending upon drive capacity, host device, OS and application.)",
//   //   "category": "electronics",
//   //   "image": "https://fakestoreapi.com/img/61U7T1koQqL._AC_SX679_.jpg",
//   //   "rating": {
//   //     "rate": 2.9,
//   //     "count": 470
//   //   }
//   // },
//   // {
//   //   "id": 11,
//   //   "title": "Silicon Power 256GB SSD 3D NAND A55 SLC Cache Performance Boost SATA III 2.5",
//   //   "price": 109,
//   //   "description": "3D NAND flash are applied to deliver high transfer speeds Remarkable transfer speeds that enable faster bootup and improved overall system performance. The advanced SLC Cache Technology allows performance boost and longer lifespan 7mm slim design suitable for Ultrabooks and Ultra-slim notebooks. Supports TRIM command, Garbage Collection technology, RAID, and ECC (Error Checking & Correction) to provide the optimized performance and enhanced reliability.",
//   //   "category": "electronics",
//   //   "image": "https://fakestoreapi.com/img/71kWymZ+c+L._AC_SX679_.jpg",
//   //   "rating": {
//   //     "rate": 4.8,
//   //     "count": 319
//   //   }
//   // },
//   // {
//   //   "id": 12,
//   //   "title": "WD 4TB Gaming Drive Works with Playstation 4 Portable External Hard Drive",
//   //   "price": 114,
//   //   "description": "Expand your PS4 gaming experience, Play anywhere Fast and easy, setup Sleek design with high capacity, 3-year manufacturer's limited warranty",
//   //   "category": "electronics",
//   //   "image": "https://fakestoreapi.com/img/61mtL65D4cL._AC_SX679_.jpg",
//   //   "rating": {
//   //     "rate": 4.8,
//   //     "count": 400
//   //   }
//   // },
//   // {
//   //   "id": 13,
//   //   "title": "Acer SB220Q bi 21.5 inches Full HD (1920 x 1080) IPS Ultra-Thin",
//   //   "price": 599,
//   //   "description": "21. 5 inches Full HD (1920 x 1080) widescreen IPS display And Radeon free Sync technology. No compatibility for VESA Mount Refresh Rate: 75Hz - Using HDMI port Zero-frame design | ultra-thin | 4ms response time | IPS panel Aspect ratio - 16: 9. Color Supported - 16. 7 million colors. Brightness - 250 nit Tilt angle -5 degree to 15 degree. Horizontal viewing angle-178 degree. Vertical viewing angle-178 degree 75 hertz",
//   //   "category": "electronics",
//   //   "image": "https://fakestoreapi.com/img/81QpkIctqPL._AC_SX679_.jpg",
//   //   "rating": {
//   //     "rate": 2.9,
//   //     "count": 250
//   //   }
//   // },
//   // {
//   //   "id": 14,
//   //   "title": "Samsung 49-Inch CHG90 144Hz Curved Gaming Monitor (LC49HG90DMNXZA) – Super Ultrawide Screen QLED ",
//   //   "price": 999.99,
//   //   "description": "49 INCH SUPER ULTRAWIDE 32:9 CURVED GAMING MONITOR with dual 27 inch screen side by side QUANTUM DOT (QLED) TECHNOLOGY, HDR support and factory calibration provides stunningly realistic and accurate color and contrast 144HZ HIGH REFRESH RATE and 1ms ultra fast response time work to eliminate motion blur, ghosting, and reduce input lag",
//   //   "category": "electronics",
//   //   "image": "https://fakestoreapi.com/img/81Zt42ioCgL._AC_SX679_.jpg",
//   //   "rating": {
//   //     "rate": 2.2,
//   //     "count": 140
//   //   }
//   // },
//   // {
//   //   "id": 15,
//   //   "title": "BIYLACLESEN Women's 3-in-1 Snowboard Jacket Winter Coats",
//   //   "price": 56.99,
//   //   "description": "Note:The Jackets is US standard size, Please choose size as your usual wear Material: 100% Polyester; Detachable Liner Fabric: Warm Fleece. Detachable Functional Liner: Skin Friendly, Lightweigt and Warm.Stand Collar Liner jacket, keep you warm in cold weather. Zippered Pockets: 2 Zippered Hand Pockets, 2 Zippered Pockets on Chest (enough to keep cards or keys)and 1 Hidden Pocket Inside.Zippered Hand Pockets and Hidden Pocket keep your things secure. Humanized Design: Adjustable and Detachable Hood and Adjustable cuff to prevent the wind and water,for a comfortable fit. 3 in 1 Detachable Design provide more convenience, you can separate the coat and inner as needed, or wear it together. It is suitable for different season and help you adapt to different climates",
//   //   "category": "women's clothing",
//   //   "image": "https://fakestoreapi.com/img/51Y5NI-I5jL._AC_UX679_.jpg",
//   //   "rating": {
//   //     "rate": 2.6,
//   //     "count": 235
//   //   }
//   // },
//   // {
//   //   "id": 16,
//   //   "title": "Lock and Love Women's Removable Hooded Faux Leather Moto Biker Jacket",
//   //   "price": 29.95,
//   //   "description": "100% POLYURETHANE(shell) 100% POLYESTER(lining) 75% POLYESTER 25% COTTON (SWEATER), Faux leather material for style and comfort / 2 pockets of front, 2-For-One Hooded denim style faux leather jacket, Button detail on waist / Detail stitching at sides, HAND WASH ONLY / DO NOT BLEACH / LINE DRY / DO NOT IRON",
//   //   "category": "women's clothing",
//   //   "image": "https://fakestoreapi.com/img/81XH0e8fefL._AC_UY879_.jpg",
//   //   "rating": {
//   //     "rate": 2.9,
//   //     "count": 340
//   //   }
//   // },
//   // {
//   //   "id": 17,
//   //   "title": "Rain Jacket Women Windbreaker Striped Climbing Raincoats",
//   //   "price": 39.99,
//   //   "description": "Lightweight perfet for trip or casual wear---Long sleeve with hooded, adjustable drawstring waist design. Button and zipper front closure raincoat, fully stripes Lined and The Raincoat has 2 side pockets are a good size to hold all kinds of things, it covers the hips, and the hood is generous but doesn't overdo it.Attached Cotton Lined Hood with Adjustable Drawstrings give it a real styled look.",
//   //   "category": "women's clothing",
//   //   "image": "https://fakestoreapi.com/img/71HblAHs5xL._AC_UY879_-2.jpg",
//   //   "rating": {
//   //     "rate": 3.8,
//   //     "count": 679
//   //   }
//   // },
//   // {
//   //   "id": 18,
//   //   "title": "MBJ Women's Solid Short Sleeve Boat Neck V ",
//   //   "price": 9.85,
//   //   "description": "95% RAYON 5% SPANDEX, Made in USA or Imported, Do Not Bleach, Lightweight fabric with great stretch for comfort, Ribbed on sleeves and neckline / Double stitching on bottom hem",
//   //   "category": "women's clothing",
//   //   "image": "https://fakestoreapi.com/img/71z3kpMAYsL._AC_UY879_.jpg",
//   //   "rating": {
//   //     "rate": 4.7,
//   //     "count": 130
//   //   }
//   // },
//   // {
//   //   "id": 19,
//   //   "title": "Opna Women's Short Sleeve Moisture",
//   //   "price": 7.95,
//   //   "description": "100% Polyester, Machine wash, 100% cationic polyester interlock, Machine Wash & Pre Shrunk for a Great Fit, Lightweight, roomy and highly breathable with moisture wicking fabric which helps to keep moisture away, Soft Lightweight Fabric with comfortable V-neck collar and a slimmer fit, delivers a sleek, more feminine silhouette and Added Comfort",
//   //   "category": "women's clothing",
//   //   "image": "https://fakestoreapi.com/img/51eg55uWmdL._AC_UX679_.jpg",
//   //   "rating": {
//   //     "rate": 4.5,
//   //     "count": 146
//   //   }
//   // },
//   // {
//   //   "id": 20,
//   //   "title": "DANVOUY Womens T Shirt Casual Cotton Short",
//   //   "price": 12.99,
//   //   "description": "95%Cotton,5%Spandex, Features: Casual, Short Sleeve, Letter Print,V-Neck,Fashion Tees, The fabric is soft and has some stretch., Occasion: Casual/Office/Beach/School/Home/Street. Season: Spring,Summer,Autumn,Winter.",
//   //   "category": "women's clothing",
//   //   "image": "https://fakestoreapi.com/img/61pHAEJ4NML._AC_UX679_.jpg",
//   //   "rating": {
//   //     "rate": 3.6,
//   //     "count": 145
//   //   }
//   // }
