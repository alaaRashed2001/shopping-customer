//
// import 'package:flutter/material.dart';
// import 'package:online_store_customers/Models/product_model.dart';
//
// class CartProvider with ChangeNotifier {
//   List selectedProducts = [];
//   int price = 0;
//
//   add(ProductModel product) {
//     selectedProducts.add(product);
//     price += product.price!.round();
//     notifyListeners();
//   }
//
//   delete(ProductModel product) {
//     selectedProducts.remove(product);
//     price -= product.price!.round();
//
//     notifyListeners();
//   }
//
//   get itemCount {
//     return selectedProducts.length;
//   }
// }


// import 'package:flutter/material.dart';
// import 'package:online_store_customers/Models/order_model.dart';
// import 'package:online_store_customers/Models/product_model.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'dart:convert';
// class CartProvider with ChangeNotifier {
//
//   List selectedProducts = [];
//   int price = 0;
//
//   add(ProductModel product) {
//     selectedProducts.add(product);
//     price += product.price!.round();
//     notifyListeners();
//   }
//
//   delete(ProductModel product) {
//     selectedProducts.remove(product);
//     price -= product.price!.round();
//
//     notifyListeners();
//   }
//
//   get itemCount {
//     return selectedProducts.length;
//   }
//
//
//   List<ProductModel> _cartItems = [];
//
//   List<ProductModel> get cartItems => _cartItems;
//
//   void addProduct(ProductModel product) {
//     _cartItems.add(product);
//     notifyListeners();
//     saveCartToPrefs();
//   }
//
//   void removeProduct(ProductModel product) {
//     _cartItems.remove(product);
//     notifyListeners();
//     saveCartToPrefs();
//   }
//
//   void clearCart() {
//     _cartItems.clear();
//     notifyListeners();
//     saveCartToPrefs();
//   }
//
//   Future<void> saveCartToPrefs() async {
//     final prefs = await SharedPreferences.getInstance();
//     final cartItemsJson = jsonEncode(_cartItems.map((item) => item.toJson()).toList());
//     prefs.setString('cartItems', cartItemsJson);
//   }
//
//   Future<void> loadCartFromPrefs() async {
//     final prefs = await SharedPreferences.getInstance();
//     final cartItemsJson = prefs.getString('cartItems');
//     if (cartItemsJson != null) {
//       final List decodedItems = jsonDecode(cartItemsJson);
//       _cartItems = decodedItems.map((item) => ProductModel.fromJson(item)).toList();
//       notifyListeners();
//     }
//   }
//
//   List<OrderModel> _orders = [];
//
//   List<OrderModel> get orders => _orders;
//
//   void completeOrder() {
//     final order = OrderModel(id: DateTime.now().toString(), products: _cartItems);
//     _orders.add(order);
//     clearCart();
//     notifyListeners();
//     saveOrdersToPrefs();
//   }
//
//   Future<void> saveOrdersToPrefs() async {
//     final prefs = await SharedPreferences.getInstance();
//     final ordersJson = jsonEncode(_orders.map((order) => order.toJson()).toList());
//     prefs.setString('orders', ordersJson);
//   }
//
//   Future<void> loadOrdersFromPrefs() async {
//     final prefs = await SharedPreferences.getInstance();
//     final ordersJson = prefs.getString('orders');
//     if (ordersJson != null) {
//       final List decodedOrders = jsonDecode(ordersJson);
//       _orders = decodedOrders.map((order) => OrderModel.fromJson(order)).toList();
//       notifyListeners();
//     }
//   }
// }


import 'package:flutter/material.dart';
import 'package:online_store_customers/Models/cart_item_model.dart';
import 'package:online_store_customers/Models/product_model.dart';

class CartProvider with ChangeNotifier {
    List selectedProducts = [];
  int price = 0;
  add(ProductModel product) {
    selectedProducts.add(product);
    price += product.price!.round();

    //
    final index = _cartItems.indexWhere((item) => item.product.id == product.id);
    if (index >= 0) {
      _cartItems[index] = CartItemModel(
        product: _cartItems[index].product,
        quantity: _cartItems[index].quantity + 1,
      );
    } else {
      _cartItems.add(CartItemModel(product: product, quantity: 1));
    }
    //

    notifyListeners();
  }
  delete(ProductModel product) {
    selectedProducts.remove(product);
    price -= product.price!.round();

    notifyListeners();
  }
  get itemCount {
    return selectedProducts.length;
  }

  /// xxx
    List<CartItemModel> _cartItems = [];

    List<CartItemModel> get cartItems => _cartItems;

    // void addToCart(ProductModel product) {
    //   final index = _items.indexWhere((item) => item.product.id == product.id);
    //   if (index >= 0) {
    //     _items[index] = CartItemModel(
    //       product: _items[index].product,
    //       quantity: _items[index].quantity + 1,
    //     );
    //   } else {
    //     _items.add(CartItemModel(product: product, quantity: 1));
    //   }
    //   notifyListeners();
    // }

    void clearCart() {
      _cartItems = [];
      notifyListeners();
    }

    double get totalAmount {
      return _cartItems.fold(0.0, (sum, item) => sum + item.product.price! * item.quantity);
    }


  // List<ProductModel> _cartItems = [];
  //
  // List<ProductModel> get cartItems => _cartItems;
  //
  // void addToCart(ProductModel product) {
  //   _cartItems.add(product);
  //   notifyListeners();
  // }
  //
  // void removeFromCart(ProductModel product) {
  //   _cartItems.remove(product);
  //   notifyListeners();
  // }
  //
  // void clearCart() {
  //   _cartItems.clear();
  //   notifyListeners();
  // }
}

