import 'package:online_store_customers/Models/product_model.dart';

class CartItemModel{
  final ProductModel product;
  final int quantity;
  CartItemModel({required this.product, required this.quantity});
}