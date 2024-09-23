import 'package:flutter/material.dart';
import 'package:online_store_customers/Models/product_model.dart';
import 'package:online_store_customers/Providers/cart_provider.dart';
import 'package:online_store_customers/Providers/theme_provider.dart';
import 'package:online_store_customers/Widgets/my_button.dart';
import 'package:online_store_customers/Widgets/products_and_price.dart';
import 'package:online_store_customers/Widgets/rate_stars.dart';
import 'package:online_store_customers/Widgets/text_widget.dart';
import 'package:provider/provider.dart';

class DetailsScreen extends StatefulWidget {
  final ProductModel productModel;
  const DetailsScreen({super.key, required this.productModel});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  bool isShowMore = true;

  @override
  Widget build(BuildContext context) {
    final cartProvider = Provider.of<CartProvider>(context);
    final themeProvider = Provider.of<ThemeProvider>(context);
    final Color color =
        themeProvider.getDarkTheme ? Colors.white : Colors.black;
    return Scaffold(
        appBar: AppBar(
          actions: const [ProductsAndPrice()],
          leading: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Icon(
                Icons.arrow_back_ios,
                color: color,
              ),),
          elevation: 0,
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          title: TextWidget(
            text: widget.productModel.title ?? "Not Defined",
            color: color,
            textSize: 16,
            isTitle: true,
            maxLines: 1,
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                  height: 280,
                  child: Image.network(widget.productModel.image ?? "")),
              const SizedBox(
                height: 11,
              ),
              TextWidget(
                  text: "\$  ${widget.productModel.price}",
                  color: color,
                  textSize: 20),
              const SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 255, 129, 129),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child:
                          TextWidget(text: "New", color: color, textSize: 15)),
                  const SizedBox(
                    width: 8,
                  ),
                  const RateStars(),
                  const SizedBox(
                    width: 66,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.edit_location,
                        size: 26,
                        color: color,
                      ),
                      const SizedBox(
                        width: 3,
                      ),
                      TextWidget(
                          text: widget.productModel.location ?? "",
                          color: color,
                          textSize: 16),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              const SizedBox(
                width: double.infinity,
                child: Text(
                  "Details : ",
                  style: TextStyle(fontSize: 22),
                  textAlign: TextAlign.start,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              TextWidget(
                  text: widget.productModel.description ?? "",
                  color: color,
                  textSize: 18),
              TextButton(
                onPressed: () {
                  setState(() {
                    isShowMore = !isShowMore;
                  });
                },
                child: TextWidget(
                    text: isShowMore ? "Show more" : "Show less",
                    color: color,
                    textSize: 18),
              ),
              const SizedBox(
                height: 16,
              ),
              MyButton(
                  buttonName: "Add To Cart",
                  onPressed: () {
                    cartProvider.add(widget.productModel);
                  }),
            ],
          ),
        ));
  }
}
