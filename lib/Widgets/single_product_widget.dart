import 'package:flutter/material.dart';
import 'package:online_store_customers/Helpers/dummy_data.dart';
import 'package:online_store_customers/Providers/cart_provider.dart';
import 'package:online_store_customers/Providers/favorites_provider.dart';
import 'package:online_store_customers/Providers/theme_provider.dart';
import 'package:online_store_customers/Saller/enums_order_status.dart';
import 'package:online_store_customers/Saller/order_status_provider.dart';
import 'package:online_store_customers/Screens/Inner_Screens/details_screen.dart';
import 'package:online_store_customers/widgets/text_widget.dart';
import 'package:provider/provider.dart';

class SingleProductWidget extends StatelessWidget {
  const SingleProductWidget({super.key});
  @override
  Widget build(BuildContext context) {
    final allProducts = dummyCategories
        .expand((category) => category.subcategories)
        .expand((subcategory) => subcategory.products)
        .toList();


    final cartProvider = Provider.of<CartProvider>(context);
    final themeProvider = Provider.of<ThemeProvider>(context);
    final Color color =
        themeProvider.getDarkTheme ? Colors.white : Colors.black;
    Size size = MediaQuery.of(context).size;
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 33),
        itemCount: allProducts.length,
        // itemCount: cartProvider.cartItems.length,
        itemBuilder: (BuildContext context, int index) {


          final product = allProducts[index];
          final isFavorite = Provider.of<FavoritesProvider>(context).isFavorite(product);
          final orderStatusProvider = Provider.of<OrderStatusProvider>(context);

          return Padding(
            padding: const EdgeInsets.all(4.0),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailsScreen(
                       productModel: allProducts[index],
                    //  productModel: cartProvider.cartItems[index],
                    ),
                  ),
                );
              },
              child: Container(
                height: size.height * 0.20,
                decoration: BoxDecoration(
                  color: Theme.of(context).cardColor,
                  border: Border.all(color: color, width: 1),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 8),
                      width: size.width * 0.2,
                      height: size.width * 0.25,
                      child: Image.network(
                       allProducts[index].image ?? '',
                      //  cartProvider.cartItems[index].image ?? '',
                        errorBuilder: (x, y, z) {
                          return const Center(
                            child: Icon(Icons.broken_image),
                          );
                        },
                      ),
                    ),
                    // const SizedBox(
                    //   width: 8,
                    // ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            child: Row(
                              children: [
                                TextWidget(
                                  text: allProducts[index].title ?? "Not Found",
                                 //  text: cartProvider.cartItems[index].title ?? "Not Found",
                                  color: color,
                                  textSize: 16.0,
                                  maxLines: 1,
                                ),
                                const SizedBox(
                                  width: 12,
                                ),
                                // IconButton(
                                //   onPressed: () {},
                                //   icon: Icon(
                                //     Icons.shopping_bag_outlined,
                                //     color: color,
                                //   ),
                                // ),
                                GestureDetector(
                                  onTap: () {
                                    print('print heart button is pressed');
                                    Provider.of<FavoritesProvider>(context, listen: false).toggleFavoriteStatus(product);
                                  },
                                  child: Icon(
                                    isFavorite ? Icons.favorite : Icons.favorite_border,
                                    size: 18,
                                    color: color,
                                  ),
                                )

                               // const HeartButton(),
                              ],
                            ),
                          ),
                          Flexible(
                            child: Material(
                              borderRadius: BorderRadius.circular(16.0),
                              color: Colors.lightBlue,
                              child: InkWell(
                                splashColor: Colors.red,
                                borderRadius: BorderRadius.circular(16.0),
                                onTap: () {
                                  cartProvider.add(allProducts[index]);
                                  orderStatusProvider.updateOrderStatus(OrderStatus.addedToCart);
                                },
                                child: const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Icon(
                                    Icons.add_shopping_cart_rounded,
                                    size: 20,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Flexible(
                            child: TextWidget(
                              text: "\$ ${allProducts[index].price}",
                            //  text: "\$ ${cartProvider.cartItems[index].price?.toStringAsFixed(2)}",
                              color: color,
                              textSize: 18.0,
                              maxLines: 1,
                              isTitle: true,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        });
  }
}
