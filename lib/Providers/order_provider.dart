import 'package:flutter/material.dart';
import 'package:online_store_customers/Models/order_model.dart';
import 'package:online_store_customers/Models/product_model.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';


class OrdersProvider with ChangeNotifier {
  List<OrderModel> _orders = [];

  List<OrderModel> get orders => [..._orders];

  Future<void> addOrder(List<ProductModel> cartProducts) async {
    final order = OrderModel(
      id: DateTime.now().toString(),
      products: cartProducts,
      dateTime: DateTime.now(),
      image: '',
    );
    _orders.add(order);
    notifyListeners();
    await saveOrdersToSharedPreferences();
  }

  Future<void> loadOrdersFromSharedPreferences() async {
    final prefs = await SharedPreferences.getInstance();
    if (!prefs.containsKey('orders')) return;
    final orderData = json.decode(prefs.getString('orders')!) as List;
    _orders = orderData
        .map((order) => OrderModel(
      id: order['id'],
      products: (order['products'] as List)
          .map((product) => ProductModel(
        id: product['id'],
        title: product['title'],
        price: product['price'],
        description: product['description'],
      ))
          .toList(),
      dateTime: DateTime.parse(order['dateTime']), image: 'image',
    ))
        .toList();
    notifyListeners();
  }

  Future<void> saveOrdersToSharedPreferences() async {
    final prefs = await SharedPreferences.getInstance();
    final orderData = json.encode(_orders
        .map((order) => {
      'id': order.id,
      'products': order.products
          .map((product) => {
        'id': product.id,
        'name': product.title,
        'price': product.price,
        'description': product.description,
      })
          .toList(),
      'dateTime': order.dateTime.toIso8601String(),
    })
        .toList());
    prefs.setString('orders', orderData);
  }
}