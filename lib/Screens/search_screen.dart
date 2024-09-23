import 'package:flutter/material.dart';
import 'package:online_store_customers/Helpers/dummy_data.dart';
import 'package:online_store_customers/Models/product_model.dart';
import 'package:online_store_customers/Providers/theme_provider.dart';
import 'package:online_store_customers/Widgets/products_and_price.dart';
import 'package:online_store_customers/Widgets/single_product_widget.dart';
import 'package:online_store_customers/Widgets/text_widget.dart';
import 'package:provider/provider.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  late TextEditingController searchEditingController;

  @override
  void initState() {
    searchEditingController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    searchEditingController.dispose();
    super.dispose();
  }

  List<ProductModel> searchProduct = [];
  final allProducts = dummyCategories
      .expand((category) => category.subcategories)
      .expand((subcategory) => subcategory.products)
      .toList();
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final Color color =
        themeProvider.getDarkTheme ? Colors.white : Colors.black;
    return Scaffold(
      appBar: AppBar(
        actions: const [ProductsAndPrice()],
        elevation: 0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        title: TextWidget(
          text: 'Search',
          color: color,
          textSize: 24,
          isTitle: true,
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 15.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: TextField(
              controller: searchEditingController,
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(24)),
                hintText: "Search",
                filled: true,
                prefixIcon: const Icon(Icons.search),
                suffixIcon: GestureDetector(
                  onTap: () {
                    searchEditingController.clear();
                    FocusScope.of(context).unfocus();
                  },
                  child: const Icon(
                    Icons.clear,
                    color: Colors.red,
                  ),
                ),
              ),
              onChanged: (searchValue) {
                setState(() {
                  for (int i = 0; i < allProducts.length; i++) {
                    searchProduct.clear();
                    if (allProducts[i]
                        .title!
                        .toLowerCase()
                        .contains(searchValue.toLowerCase())) {
                      searchProduct.add(allProducts[i].title as ProductModel);
                    }
                  }
                });

                // setState(() {
                //   productListSearch = productProvider.searchQuery(
                //       searchText: searchTextController.text);
                // });
              },
              onSubmitted: (value) {
                // setState(() {
                //   productListSearch = productProvider.searchQuery(
                //       searchText: searchTextController.text,
                //       passedList: productList);
                // });
              },
            ),
          ),
          const SizedBox(
            height: 15.0,
          ),
          const Expanded(
            child: SingleProductWidget(),
          ),
          // const Padding(
          //   padding: EdgeInsets.only(top: 22),
          //   child: SingleProductWidget(),
          // ),
        ],
      ),
    );
  }
}
