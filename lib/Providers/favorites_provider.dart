import 'package:flutter/material.dart';
import 'package:online_store_customers/Models/product_model.dart';

class FavoritesProvider with ChangeNotifier {
  final List<ProductModel> _favorites = [];

  List<ProductModel> get favorites => _favorites;

  void toggleFavoriteStatus(ProductModel product) {
    if (_favorites.any((item) => item.id == product.id)) {
      _favorites.removeWhere((item) => item.id == product.id);
    } else {
      _favorites.add(product);
    }
    notifyListeners();
  }

  bool isFavorite(ProductModel product) {
    return _favorites.any((item) => item.id == product.id);
  }
}