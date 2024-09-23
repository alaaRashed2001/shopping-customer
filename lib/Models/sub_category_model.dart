import 'package:online_store_customers/Models/product_model.dart';

class SubcategoryModel {
  final int id;
  final String name;
  final List<ProductModel> products;

  SubcategoryModel({
    required this.id,
    required this.name,
    required this.products,
  });
}