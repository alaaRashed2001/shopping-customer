import 'package:flutter/material.dart';
import 'package:online_store_customers/Providers/theme_provider.dart';
import 'package:online_store_customers/Widgets/products_and_price.dart';
import 'package:online_store_customers/Widgets/single_product_widget.dart';
import 'package:online_store_customers/Widgets/text_widget.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
          text: 'Welcome MyName',
          color: color,
          textSize: 24,
          isTitle: true,
        ),
      ),
        body:  const Padding(
          padding: EdgeInsets.only(top: 22),
          child: SingleProductWidget(),
        ),

    );
  }
}


