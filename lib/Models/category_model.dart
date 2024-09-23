import 'package:online_store_customers/Models/sub_category_model.dart';

class CategoryModel {
  final int id;
  final String name;
  final List<SubcategoryModel> subcategories;

  CategoryModel({
    required this.id,
    required this.name,
    required this.subcategories,
  });
}