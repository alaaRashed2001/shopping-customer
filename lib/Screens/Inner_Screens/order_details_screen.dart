import 'package:flutter/material.dart';
import 'package:online_store_customers/Models/order_model.dart';
import 'package:online_store_customers/Providers/theme_provider.dart';
import 'package:online_store_customers/Widgets/text_widget.dart';
import 'package:provider/provider.dart';

class OrderDetailsScreen extends StatelessWidget {
  final OrderModel order;
  const OrderDetailsScreen(this.order, {super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final Color color =
        themeProvider.getDarkTheme ? Colors.white : Colors.black;
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios),
          color: color,
        ),
        elevation: 0,
        centerTitle: false,
        title: TextWidget(
          text: 'Products Of Order',
          color: color,
          textSize: 24.0,
          isTitle: true,
        ),
        backgroundColor:
            Theme.of(context).scaffoldBackgroundColor.withOpacity(0.9),
      ),
      body: ListView.separated(
        itemCount: order.products.length,
        itemBuilder: (ctx, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 6),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.network(
                    '${order.products[index].product.image}',
                    height: size.width * 0.25,
                    width: size.width * 0.25,
                  ),
                ),
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextWidget(
                              text: order.products[index].product.title ?? "",
                              color: color,
                              textSize: 16,
                              maxLines: 2,
                            ),
                            Center(
                              child: Container(
                                  padding: const EdgeInsets.all(4),
                                  decoration: BoxDecoration(
                                    color: Colors.green[100],
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  child:
                                  TextWidget(text: "Complete Order", color: color, textSize: 15)),
                            ),
                          ],
                        ),
                        TextWidget(
                            text: '\$${order.products[index].product.price}',
                            color: color,
                            textSize: 16),
                        const SizedBox(
                          height: 5,
                        ),
                        TextWidget(
                            text: 'Quantity: ${order.products[index].quantity}',
                            color: color,
                            textSize: 16),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return const Divider();
        },
      ),

      // body: ListView.builder(
      //   itemCount: order.products.length,
      //   itemBuilder: (ctx, i) => ListTile(
      //     title: Text(order.products[i].product.title ?? ""),
      //     subtitle: Text('Quantity: ${order.products[i].quantity}'),
      //     trailing: Text('\$${order.products[i].product.price}'),
      //   ),
      // ),
    );
  }
}
