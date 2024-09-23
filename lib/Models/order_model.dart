import 'package:online_store_customers/Models/product_model.dart';

class OrderModel{
  late final String id;
  late final String image;
  late final List<ProductModel> products;
  late final DateTime dateTime;

  OrderModel({
    required this.id,
    required this.products,
    required this.image,
    required this.dateTime,
  });

  Map<String, dynamic> toJson() => {
    'id': id,
    'dateTime': dateTime,
    'image': image,
    'products': products.map((product) => product.toJson()).toList(),
  };

  factory OrderModel.fromJson(Map<String, dynamic> json) => OrderModel(
      id: json['id'],
    dateTime: json['dateTime'],
    image: json['image'],
      products: (json['products'] as List)
          .map((productJson) => ProductModel.fromJson(productJson))
          .toList(),
      );


}