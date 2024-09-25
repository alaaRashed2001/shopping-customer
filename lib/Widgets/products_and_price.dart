import 'package:flutter/material.dart';
import 'package:online_store_customers/Providers/cart_provider.dart';
import 'package:online_store_customers/Providers/theme_provider.dart';
import 'package:online_store_customers/Screens/Inner_Screens/cart_screen.dart';
import 'package:online_store_customers/Widgets/text_widget.dart';
import 'package:provider/provider.dart';

class ProductsAndPrice extends StatelessWidget {
  const ProductsAndPrice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final Color color =
    themeProvider.getDarkTheme ? Colors.white : Colors.black;
    final cartProvider = Provider.of<CartProvider>(context);
    return Row(
      children: [
        Stack(
          children: [
            Positioned(
              bottom: 24,
              child: Container(
                  padding: const EdgeInsets.all(5),
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(211, 164, 255, 193),
                      shape: BoxShape.circle),
                  child: TextWidget(
                      text: "${cartProvider.itemCount}",
                      color:color,
                      textSize: 16)),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CartScreen(),
                  ),
                );
              },
              icon:  Icon(Icons.add_shopping_cart, color: color,),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(right: 12),
          child:TextWidget(text: "\$ ${cartProvider.price}", color: color, textSize: 18)


        ),
      ],
    );
  }
}
