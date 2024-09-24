import 'package:flutter/material.dart';
import 'package:online_store_customers/Models/sub_category_model.dart';
import 'package:online_store_customers/Providers/cart_provider.dart';
import 'package:online_store_customers/Providers/theme_provider.dart';
import 'package:online_store_customers/Saller/enums_order_status.dart';
import 'package:online_store_customers/Saller/order_status_provider.dart';
import 'package:online_store_customers/Screens/details_screen.dart';
import 'package:online_store_customers/Widgets/products_and_price.dart';
import 'package:online_store_customers/Widgets/text_widget.dart';
import 'package:provider/provider.dart';

class ProductsOfSubCategory extends StatelessWidget {
  final SubcategoryModel subcategory;

  const ProductsOfSubCategory({super.key, required this.subcategory});

  @override
  Widget build(BuildContext context) {
    final cartProvider = Provider.of<CartProvider>(context);
    final orderStatusProvider = Provider.of<OrderStatusProvider>(context);

    final themeProvider = Provider.of<ThemeProvider>(context);
    final Color color =
    themeProvider.getDarkTheme ? Colors.white : Colors.black;
    return Scaffold(
      appBar: AppBar(
        actions: const [ProductsAndPrice()],
        elevation: 0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        title: TextWidget(
          text: 'Products for ${subcategory.name}',
          color: color,
          textSize: 16,
          isTitle: true,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 22),
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 3 / 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 33),
            itemCount:  subcategory.products.length,

            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailsScreen(
                        productModel:  subcategory.products[index],
                      ),
                    ),
                  );
                },
                child: GridTile(
                  footer: GridTileBar(
                    trailing: IconButton(
                        color: color,
                        onPressed: () {
                          cartProvider.add( subcategory.products[index]);
                          orderStatusProvider.updateOrderStatus(OrderStatus.addedToCart);
                        },
                        icon: const Icon(Icons.add)),
                    leading: Text("\$ ${ subcategory.products[index].price}"),
                    title: const Text(
                      "",
                    ),
                  ),
                  child: Stack(children: [
                    Positioned(
                      top: -3,
                      bottom: -9,
                      right: 0,
                      left: 0,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(55),
                        child: Image.network( subcategory.products[index].image ?? ''),
                      ),
                    ),
                  ]),
                ),
              );
            }),
      ),

    );
  }
}
