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
            title: "iPhone 12",
            price: 999.99,
            description: "Apple iPhone 12 with 64GB memory, A14 Bionic chip and 5G technology.",
            image: "https://fakestoreapi.com/img/iphone12.jpg",
            location: "Tech Store",
          ),
          ProductModel(
            id: 2,
            title: "Samsung Galaxy S21",
            price: 799.99,
            description: "Samsung Galaxy S21 with 128GB memory, Snapdragon 888 processor and 120Hz display.",
            image: "https://fakestoreapi.com/img/galaxys21.jpg",
            location: "Mobile Hub",
          ),
        ],
      ),
      SubcategoryModel(
        id: 2,
        name: 'Laptops',
        products: [
          ProductModel(
            id: 3,
            title: "MacBook Pro",
            price: 1299.99,
            description: "Apple MacBook Pro with M1 chip, 16GB RAM and 512GB SSD.",
            image: "https://fakestoreapi.com/img/macbookpro.jpg",
            location: "Apple Store",
          ),
          ProductModel(
            id: 4,
            title: "Dell XPS 13",
            price: 999.99,
            description: "Dell XPS 13 with Intel i7 processor, 16GB RAM and 512GB SSD.",
            image: "https://fakestoreapi.com/img/dellxps13.jpg",
            location: "Tech Shop",
          ),
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
            id: 5,
            title: "Leather Jacket",
            price: 149.99,
            description: "Men's stylish leather jacket, perfect for casual outings.",
            image: "https://fakestoreapi.com/img/leatherjacket.jpg",
            location: "Fashion House",
          ),
          ProductModel(
            id: 6,
            title: "Sneakers",
            price: 89.99,
            description: "Comfortable sneakers for everyday use.",
            image: "https://fakestoreapi.com/img/sneakers.jpg",
            location: "Shoe Palace",
          ),
        ],
      ),
      SubcategoryModel(
        id: 4,
        name: 'Women',
        products: [
          ProductModel(
            id: 7,
            title: "Evening Dress",
            price: 199.99,
            description: "Elegant evening dress for special occasions.",
            image: "https://fakestoreapi.com/img/eveningdress.jpg",
            location: "Glamour Boutique",
          ),
          ProductModel(
            id: 8,
            title: "Handbag",
            price: 129.99,
            description: "Stylish handbag with ample space for essentials.",
            image: "https://fakestoreapi.com/img/handbag.jpg",
            location: "Bag Shop",
          ),
        ],
      ),
    ],
  ),
  CategoryModel(
    id: 3,
    name: 'Home Appliances',
    subcategories: [
      SubcategoryModel(
        id: 5,
        name: 'Kitchen',
        products: [
          ProductModel(
            id: 9,
            title: "Blender",
            price: 49.99,
            description: "High-speed blender perfect for smoothies and soups.",
            image: "https://fakestoreapi.com/img/blender.jpg",
            location: "Home Goods Store",
          ),
          ProductModel(
            id: 10,
            title: "Microwave Oven",
            price: 89.99,
            description: "Compact microwave oven with 700W power.",
            image: "https://fakestoreapi.com/img/microwave.jpg",
            location: "Kitchen Essentials",
          ),
        ],
      ),
      SubcategoryModel(
        id: 6,
        name: 'Living Room',
        products: [
          ProductModel(
            id: 11,
            title: "LED TV",
            price: 499.99,
            description: "55-inch 4K LED TV with HDR support.",
            image: "https://fakestoreapi.com/img/ledtv.jpg",
            location: "Electronics Mart",
          ),
          ProductModel(
            id: 12,
            title: "Sound Bar",
            price: 199.99,
            description: "Dolby Atmos sound bar with wireless subwoofer.",
            image: "https://fakestoreapi.com/img/soundbar.jpg",
            location: "Tech Zone",
          ),
        ],
      ),
    ],
  ),
  CategoryModel(
    id: 4,
    name: 'Books',
    subcategories: [
      SubcategoryModel(
        id: 7,
        name: 'Fiction',
        products: [
          ProductModel(
            id: 13,
            title: "The Great Gatsby",
            price: 10.99,
            description: "A classic novel by F. Scott Fitzgerald.",
            image: "https://fakestoreapi.com/img/greatgatsby.jpg",
            location: "Bookstore",
          ),
          ProductModel(
            id: 14,
            title: "To Kill a Mockingbird",
            price: 12.99,
            description: "A novel by Harper Lee that explores themes of race and injustice.",
            image: "https://fakestoreapi.com/img/tokillamockingbird.jpg",
            location: "Book Haven",
          ),
        ],
      ),
      SubcategoryModel(
        id: 8,
        name: 'Non-Fiction',
        products: [
          ProductModel(
            id: 15,
            title: "Sapiens: A Brief History of Humankind",
            price: 14.99,
            description: "Yuval Noah Harari's exploration of human history.",
            image: "https://fakestoreapi.com/img/sapiens.jpg",
            location: "Literary Hub",
          ),
          ProductModel(
            id: 16,
            title: "Educated",
            price: 11.99,
            description: "A memoir by Tara Westover about her journey from rural Idaho to PhD.",
            image: "https://fakestoreapi.com/img/educated.jpg",
            location: "Readers' Nook",
          ),
        ],
      ),
    ],
  ),
  CategoryModel(
    id: 5,
    name: 'Sports',
    subcategories: [
      SubcategoryModel(
        id: 9,
        name: 'Outdoor',
        products: [
          ProductModel(
            id: 17,
            title: "Tent",
            price: 89.99,
            description: "Portable camping tent suitable for 2 people.",
            image: "https://fakestoreapi.com/img/tent.jpg",
            location: "Outdoor Store",
          ),
          ProductModel(
            id: 18,
            title: "Backpack",
            price: 49.99,
            description: "Durable backpack for hiking and outdoor activities.",
            image: "https://fakestoreapi.com/img/backpack.jpg",
            location: "Adventure Shop",
          ),
        ],
      ),
      SubcategoryModel(
        id: 10,
        name: 'Fitness',
        products: [
          ProductModel(
            id: 19,
            title: "Yoga Mat",
            price: 25.99,
            description: "Non-slip yoga mat for comfortable practice.",
            image: "https://fakestoreapi.com/img/yogamat.jpg",
            location: "Fitness Zone",
          ),
          ProductModel(
            id: 20,
            title: "Dumbbells",
            price: 35.99,
            description: "Pair of adjustable dumbbells for home workouts.",
            image: "https://fakestoreapi.com/img/dumbbells.jpg",
            location: "Sports Center",
          ),
        ],
      ),
    ],
  ),
  CategoryModel(
    id: 6,
    name: 'Beauty',
    subcategories: [
      SubcategoryModel(
        id: 11,
        name: 'Skincare',
        products: [
          ProductModel(
            id: 21,
            title: "Moisturizer",
            price: 29.99,
            description: "Hydrating moisturizer for all skin types.",
            image: "https://fakestoreapi.com/img/moisturizer.jpg",
            location: "Beauty Store",
          ),
          ProductModel(
            id: 22,
            title: "Sunscreen",
            price: 19.99,
            description: "SPF 50 sunscreen for daily protection.",
            image: "https://fakestoreapi.com/img/sunscreen.jpg",
            location: "Skincare Boutique",
          ),
        ],
      ),
      SubcategoryModel(
        id: 12,
        name: 'Makeup',
        products: [
          ProductModel(
            id: 23,
            title: "Lipstick",
            price: 15.99,
            description: "Long-lasting lipstick available in various shades.",
            image: "https://fakestoreapi.com/img/lipstick.jpg",
            location: "Makeup Hub",
          ),
          ProductModel(
            id: 24,
            title: "Foundation",
            price: 24.99,
            description: "Liquid foundation with full coverage.",
            image: "https://fakestoreapi.com/img/foundation.jpg",
            location: "Cosmetics Corner",
          ),
        ],
      ),
    ],
  ),
  CategoryModel(
    id: 7,
    name: 'Toys',
    subcategories: [
      SubcategoryModel(
        id: 13,
        name: 'Action Figures',
        products: [
          ProductModel(
            id: 25,
            title: "Superhero Action Figure",
            price: 29.99,
            description: "Action figure of your favorite superhero.",
            image: "https://fakestoreapi.com/img/actionfigure.jpg",
            location: "Toy Store",
          ),
          ProductModel(
            id: 26,
            title: "Dinosaur Figurine",
            price: 14.99,
            description: "Realistic dinosaur figurine for collectors.",
            image: "https://fakestoreapi.com/img/dinosaur.jpg",
            location: "Dino Toys",
          ),
        ],
      ),
      SubcategoryModel(
        id: 14,
        name: 'Board Games',
        products: [
          ProductModel(
            id: 27,
            title: "Chess Set",
            price: 49.99,
            description: "Classic chess set made of premium wood.",
            image: "https://fakestoreapi.com/img/chessset.jpg",
            location: "Game Haven",
          ),
          ProductModel(
            id: 28,
            title: "Scrabble",
            price: 29.99,
            description: "Fun word game for family game nights.",
            image: "https://fakestoreapi.com/img/scrabble.jpg",
            location: "Board Games Hub",
          ),
        ],
      ),
    ],
  ),
  CategoryModel(
    id: 8,
    name: 'Automotive',
    subcategories: [
      SubcategoryModel(
        id: 15,
        name: 'Car Accessories',
        products: [
          ProductModel(
            id: 29,
            title: "Car Phone Mount",
            price: 15.99,
            description: "Universal car phone mount for safe driving.",
            image: "https://fakestoreapi.com/img/carmount.jpg",
            location: "Auto Shop",
          ),
          ProductModel(
            id: 30,
            title: "Seat Covers",
            price: 49.99,
            description: "Stylish seat covers to protect your car seats.",
            image: "https://fakestoreapi.com/img/seats.jpg",
            location: "Car Decor",
          ),
        ],
      ),
      SubcategoryModel(
        id: 16,
        name: 'Motorcycle Accessories',
        products: [
          ProductModel(
            id: 31,
            title: "Motorcycle Helmet",
            price: 89.99,
            description: "High-quality helmet for motorcycle safety.",
            image: "https://fakestoreapi.com/img/helmet.jpg",
            location: "Motorcycle Gear",
          ),
          ProductModel(
            id: 32,
            title: "Gloves",
            price: 29.99,
            description: "Comfortable gloves for riding.",
            image: "https://fakestoreapi.com/img/gloves.jpg",
            location: "Bike Shop",
          ),
        ],
      ),
    ],
  ),
];
// final List<CategoryModel> dummyCategories = [
//   CategoryModel(
//     id: 1,
//     name: 'Electronics',
//     subcategories: [
//       SubcategoryModel(
//         id: 1,
//         name: 'Phones',
//         products: [
//           ProductModel(
//             id: 1,
//             title: "Laptops",
//             price: 109.95,
//             description:
//             "Fjallraven - Foldsack No. 1 Backpack, Fits 15 Laptops Your perfect pack for everyday use and walks in the forest. Stash your laptop (up to 15 inches) in the padded sleeve, your everyday",
//            // category: "men's clothing",
//             image: "https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg",
//             location: "bit lid shop",
//           ),
//          // ProductModel(id: 2, name: 'Samsung Galaxy S21', price: 799.99),
//         ],
//       ),
//       SubcategoryModel(
//         id: 2,
//         name: 'Laptops',
//         products: [
//           ProductModel(
//             id: 9,
//             title: "USB 3.0",
//             price: 64,
//           description: "USB 3.0 and USB 2.0 Compatibility Fast data transfers Improve PC Performance High Capacity; Compatibility Formatted NTFS for Windows 10, Windows 8.1, Windows 7; Reformatting may be required for other operating systems; Compatibility may vary depending on user’s hardware configuration and operating system",
// //category: "electronics",
// image: "https://fakestoreapi.com/img/61IBBVJvSDL._AC_SY879_.jpg",
//             location: "bit lid shop",
//           ),
//
//        //   Product(id: 'p3', name: 'MacBook Pro', price: 1299.99),
//        //   Product(id: 'p4', name: 'Dell XPS 13', price: 999.99),
//         ],
//       ),
//     ],
//   ),
//   CategoryModel(
//     id: 2,
//     name: 'Fashion',
//     subcategories: [
//       SubcategoryModel(
//         id: 3,
//         name: 'Men',
//         products: [
//           ProductModel(
//             id: 1,
//             title: "Laptops",
//             price: 109.95,
//             description:
//             "Your perfect pack for everyday use and walks in the forest. Stash your laptop (up to 15 inches) in the padded sleeve, your everyday",
//           //  category: "men's clothing",
//             image: "https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg",
//             location: "bit lid shop",
//           ),
//          // Product(id: 'p6', name: 'Sneakers', price: 89.99),
//         ],
//       ),
//       SubcategoryModel(
//         id: 4,
//         name: 'Women',
//         products: [
//           ProductModel(
//             id: 11,
//             title: 'Dress',
//             price: 79.99,
//             description:
//             "Your perfect pack for everyday use and walks in the forest. Stash your laptop",
//            // category: "men's clothing",
//             image: "https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg",
//             location: "bit lid shop",
//           ),
//
//          // Product(id: 'p8', name: 'Handbag', price: 149.99),
//         ],
//       ),
//     ],
//   ),
// ];
