import 'package:flutter/material.dart';
import 'package:online_store_customers/Helpers/warning_dialog.dart';
import 'package:online_store_customers/Providers/cart_provider.dart';
import 'package:online_store_customers/Providers/favorites_provider.dart';
import 'package:online_store_customers/Providers/theme_provider.dart';
import 'package:online_store_customers/Screens/Inner_Screens/details_screen.dart';
import 'package:online_store_customers/Widgets/text_widget.dart';
import 'package:provider/provider.dart';

class WishlistScreen extends StatefulWidget {
  const WishlistScreen({Key? key}) : super(key: key);

  @override
  State<WishlistScreen> createState() => _WishlistScreenState();
}

class _WishlistScreenState extends State<WishlistScreen>
    with WarningDialogHelper {
  @override
  Widget build(BuildContext context) {
    final favoriteProducts = Provider.of<FavoritesProvider>(context).favorites;
    final cartProvider = Provider.of<CartProvider>(context);
    final themeProvider = Provider.of<ThemeProvider>(context);
    final Color color =
        themeProvider.getDarkTheme ? Colors.white : Colors.black;
    Size size = MediaQuery.of(context).size;

    return Scaffold(
        appBar: AppBar(
            centerTitle: true,
            leading: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: Icon(Icons.arrow_back_ios, color: color,)),
            automaticallyImplyLeading: false,
            elevation: 0,
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            title: TextWidget(
              text: 'Wishlist',
              color: color,
              isTitle: true,
              textSize: 22,
            ),
            actions: [
              IconButton(
                onPressed: () {
                  warningDialog(
                      title: 'Empty your wishlist?',
                      subtitle: 'Are you sure?',
                      onPressed: () {},
                      context: context);
                },
                icon: Icon(
                  Icons.delete,
                  color: color,
                ),
              ),
            ]),
        body: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 16,
              crossAxisSpacing: 20,
            ),
            itemCount: favoriteProducts.length,
            itemBuilder: (context, index) {
              final product = favoriteProducts[index];
              return Padding(
                padding: const EdgeInsets.all(4.0),
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => DetailsScreen(
                        productModel: product,
                      ),
                    ));
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
                            product.image ?? "",
                            //  cartProvider.cartItems[index].image ?? '',
                            errorBuilder: (x, y, z) {
                              return const Center(
                                child: Icon(Icons.broken_image),
                              );
                            },
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Flexible(
                              child: Material(
                                borderRadius: BorderRadius.circular(16.0),
                                color: Colors.lightBlue,
                                child: InkWell(
                                  splashColor: Colors.red,
                                  borderRadius: BorderRadius.circular(16.0),
                                  onTap: () {
                                    cartProvider.add(product);
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
                                text: product.title ?? "",
                                color: color,
                                textSize: 20.0,
                                maxLines: 2,
                                isTitle: true,
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            TextWidget(
                              text: '\$${product.price}',
                              color: color,
                              textSize: 18.0,
                              maxLines: 1,
                              isTitle: true,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              );
            }

            // const WishlistWidget(),
            ));
  }
}
