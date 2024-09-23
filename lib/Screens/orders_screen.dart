import 'package:flutter/material.dart';
import 'package:online_store_customers/Providers/cart_provider.dart';
import 'package:online_store_customers/Providers/order_provider.dart';
import 'package:online_store_customers/Providers/theme_provider.dart';
import 'package:online_store_customers/Widgets/text_widget.dart';
import 'package:provider/provider.dart';

class OrdersScreen extends StatefulWidget {
  const OrdersScreen({Key? key}) : super(key: key);

  @override
  State<OrdersScreen> createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen> {
  @override
  Widget build(BuildContext context) {
    final ordersData = Provider.of<OrdersProvider>(context);
    final orders = ordersData.orders;

    final themeProvider = Provider.of<ThemeProvider>(context);
    final Color color =
        themeProvider.getDarkTheme ? Colors.white : Colors.black;
    final cartProvider = Provider.of<CartProvider>(context);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back_ios)),
        elevation: 0,
        centerTitle: false,
        title: TextWidget(
          text: 'Your orders',
          color: color,
          textSize: 24.0,
          isTitle: true,
        ),
        backgroundColor:
            Theme.of(context).scaffoldBackgroundColor.withOpacity(0.9),
      ),
      body: ListView.builder(
        itemCount: orders.length,
        itemBuilder: (ctx, index) => Card(
          margin: const EdgeInsets.all(10),
          child: Column(
            children: [
              ListTile(
                onTap: () {
                  //  Navigator.of(context).push(MaterialPageRoute(builder: (context) => DetailsScreen(productModel: orders[i].products),));
                },
                leading: CircleAvatar(
                  child: Image.network(
                    orders[index].image,
                    errorBuilder: (x, y, z) {
                      return const Center(
                        child: Icon(Icons.broken_image),
                      );
                    },
                  ),
                ),
                title:  Text(
                    'Pay \$${cartProvider.price}',
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  'Total Products: ${orders[index].products.length}\nOrder Date: ${orders[index].dateTime}',
                ),
              ),
              const Divider(),
              ...orders[index].products.map((prod) => ListTile(
                    title: Text(prod.title ?? ""),
                    subtitle: Text('\$${prod.price}'),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
