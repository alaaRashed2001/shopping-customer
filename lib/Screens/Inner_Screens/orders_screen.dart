import 'package:flutter/material.dart';
import 'package:online_store_customers/Providers/order_provider.dart';
import 'package:online_store_customers/Providers/theme_provider.dart';
import 'package:online_store_customers/Screens/Inner_Screens/order_details_screen.dart';
import 'package:online_store_customers/Widgets/text_widget.dart';
import 'package:provider/provider.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final Color color =
        themeProvider.getDarkTheme ? Colors.white : Colors.black;
    final orderProvider = Provider.of<OrderProvider>(context);
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
          text: 'Your Orders',
          color: color,
          textSize: 24.0,
          isTitle: true,
        ),
        backgroundColor:
            Theme.of(context).scaffoldBackgroundColor.withOpacity(0.9),
      ),
      body: ListView.builder(
        itemCount: orderProvider.orders.length,
        itemBuilder: (ctx, index) => Card(
          margin: const EdgeInsets.all(10),
          child: Column(
            children: [
              ListTile(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => OrderDetailsScreen(
                        orderProvider.orders[index],
                      ),
                    ),
                  );
                },
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Order',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                        padding: const EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          color:  Colors.green[100],
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child:
                        TextWidget(text: "Complete Order", color: color, textSize: 15)),
                  ],
                ),
                subtitle: Text(
                  'Total items: ${orderProvider.orders[index].products.length}, \n Date: ${orderProvider.orders[index].dateTime}',
                ),
              ),
              const Divider(),
            ],
          ),
        ),
      ),
    );
  }
}
