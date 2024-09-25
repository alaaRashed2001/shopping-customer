import 'package:flutter/material.dart';
import 'package:online_store_customers/Models/category_model.dart';
import 'package:online_store_customers/Providers/theme_provider.dart';
import 'package:online_store_customers/Screens/Inner_Screens/products_of_sub_category.dart';
import 'package:provider/provider.dart';

class SubcategoriesSheet extends StatelessWidget {
  final CategoryModel category;

  const SubcategoriesSheet({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final Color color =
    themeProvider.getDarkTheme ? Colors.white : Colors.black;
    return ListView.builder(
      itemCount: category.subcategories.length,
      itemBuilder: (context, index) {
        final subcategory = category.subcategories[index];
        return ListTile(

          title: Text(
            subcategory.name,
            style: TextStyle(
              color: color,
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
