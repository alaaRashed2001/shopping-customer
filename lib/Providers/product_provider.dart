import 'package:flutter/material.dart';
import 'package:online_store_customers/Helpers/dummy_data.dart';
import 'package:online_store_customers/Models/product_model.dart';

class ProductProvider with ChangeNotifier {
  List<ProductModel> get getProducts {
    return allProducts;
  }

  ProductModel? findByProdId(int productId) {
    if (allProducts.where((element) => element.id == productId).isEmpty) {
      return null;
    }
    return allProducts.firstWhere((element) => element.id == productId);
  }

  // List<ProductModel> findByCategory({required String ctgName}) {
  //   List<ProductModel> ctgList = allProducts
  //       .where((element) => element.category!
  //       .toLowerCase()
  //       .contains(ctgName.toLowerCase()))
  //       .toList();
  //   return ctgList;
  // }

  List<ProductModel> searchQuery(
      {required String searchText, required List<ProductModel> passedList}) {
    List<ProductModel> searchList = passedList
        .where((element) => element.title!
        .toLowerCase()
        .contains(searchText.toLowerCase()))
        .toList();
    return searchList;
  }
  final allProducts = dummyCategories
      .expand((category) => category.subcategories)
      .expand((subcategory) => subcategory.products)
      .toList();
}
