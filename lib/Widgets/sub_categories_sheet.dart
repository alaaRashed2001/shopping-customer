import 'package:flutter/material.dart';
import 'package:online_store_customers/Models/category_model.dart';
import 'package:online_store_customers/Screens/products_of_sub_category.dart';

class SubcategoriesSheet extends StatelessWidget {
  final CategoryModel category;

  const SubcategoriesSheet({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: category.subcategories.length,
      itemBuilder: (context, index) {
        final subcategory = category.subcategories[index];
        return ListTile(

          title: Text(
            subcategory.name,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold
            ),
          ),
          onTap: () {
            Navigator.of(context).pop();
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) =>
                    ProductsOfSubCategory(subcategory: subcategory),
              ),
            );
          },
        );
      },
    );
  }
}
