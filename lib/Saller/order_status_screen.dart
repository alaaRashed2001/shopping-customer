import 'package:flutter/material.dart';
import 'package:online_store_customers/Providers/order_provider.dart';
import 'package:online_store_customers/Providers/theme_provider.dart';
import 'package:online_store_customers/Saller/enums_order_status.dart';
import 'package:online_store_customers/Saller/order_status_provider.dart';
import 'package:online_store_customers/Screens/Inner_Screens/order_details_screen.dart';
import 'package:online_store_customers/Widgets/text_widget.dart';
import 'package:provider/provider.dart';

class OrderStatusScreen extends StatelessWidget {
  const OrderStatusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final Color color =
    themeProvider.getDarkTheme ? Colors.white : Colors.black;
    final orderProvider = Provider.of<OrderProvider>(context);
    final orderStatusProvider = Provider.of<OrderStatusProvider>(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: false,
        title: TextWidget(
          text: 'All Orders',
          color: color,
          textSize: 24.0,
          isTitle: true,
        ),
        backgroundColor:
        Theme.of(context).scaffoldBackgroundColor.withOpacity(0.9),
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (ctx, index) => Card(
          margin: const EdgeInsets.all(10),
          child: Column(
            children: [
              ListTile(
                onTap: () {
                  // Navigator.of(context).push(
                  //   MaterialPageRoute(
                  //     builder: (context) => OrderDetailsScreen(
                  //       orderProvider.orders[index],
                  //     ),
                  //   ),
                  // );
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
                        TextWidget(text: orderStatusProvider.orderStatus.name, color: color, textSize: 15)),
                  ],
                ),
                subtitle: const Text(
                  'Total items: 5, \n Date: Sep 25, 2024',
                ),
              ),
              const Divider(),
            ],
          ),
        ),
      ),
    );
  }
  // Widget build(BuildContext context) {
   // final orderStatusProvider = Provider.of<OrderStatusProvider>(context);
  //
  //   return Scaffold(
  //     appBar: AppBar(
  //       elevation: 0,
  //       centerTitle: true,
  //       automaticallyImplyLeading: false,
  //       backgroundColor: Theme.of(context).scaffoldBackgroundColor,
  //       title: TextWidget(
  //         text: "checkout screen",
  //         color: Colors.teal,
  //         textSize: 24,
  //         isTitle: true,
  //       ),
  //     ),
  //     body: Center(
  //       child: Column(
  //         mainAxisAlignment: MainAxisAlignment.center,
  //         children: [
  //           TextWidget(
  //             text: "Current Order Status:",
  //             color: Colors.teal,
  //             textSize: 24,
  //             isTitle: true,
  //           ),
  //           TextWidget(
  //             text: orderStatusProvider.orderStatus.name,
  //             color: Colors.redAccent,
  //             textSize: 24,
  //
  //           ),
  //
  //           const SizedBox(height: 20),
  //
  //           ListView(
  //             shrinkWrap: true,
  //             scrollDirection:Axis.vertical ,
  //             children: [
  //               InkWell(
  //                 onTap: (){
  //                   orderStatusProvider.updateOrderStatus(OrderStatus.addedToCart);
  //                 },
  //                 child: Center(
  //                   child: Card(
  //                   shape: OutlineInputBorder(
  //                     borderRadius: BorderRadius.circular(24),
  //                     borderSide: const BorderSide(
  //                       color: Colors.yellowAccent
  //                     )
  //                   ),
  //                     child: Padding(
  //                       padding: const EdgeInsets.all(8.0),
  //                       child: IntrinsicWidth(
  //                         child: IntrinsicHeight(
  //                           child: TextWidget(
  //                             text: "Add to Cart",
  //                             color: Colors.white,
  //                             textSize: 24,
  //                             isTitle: true,
  //                           ),
  //                         ),
  //                       ),
  //                     ),
  //                   ),
  //                 ),
  //               ),
  //               InkWell(
  //                 onTap: (){
  //                   orderStatusProvider.updateOrderStatus(OrderStatus.checkout);
  //                 },
  //                 child: Center(
  //                   child: Card(
  //                   shape: OutlineInputBorder(
  //                     borderRadius: BorderRadius.circular(24),
  //                     borderSide: const BorderSide(
  //                       color: Colors.greenAccent
  //                     )
  //                   ),
  //                     child: Padding(
  //                       padding: const EdgeInsets.all(8.0),
  //                       child: IntrinsicWidth(
  //                         child: IntrinsicHeight(
  //                           child: TextWidget(
  //                             text: "CheckOut",
  //                             color: Colors.white,
  //                             textSize: 24,
  //                             isTitle: true,
  //                           ),
  //                         ),
  //                       ),
  //                     ),
  //                   ),
  //                 ),
  //               ),
  //
  //               InkWell(
  //                 onTap: (){
  //                   orderStatusProvider.updateOrderStatus(OrderStatus.paymentSuccess);
  //                 },
  //                 child: Center(
  //                   child: Card(
  //                     shape: OutlineInputBorder(
  //                         borderRadius: BorderRadius.circular(24),
  //                         borderSide: const BorderSide(
  //                             color: Colors.blueAccent
  //                         )
  //                     ),
  //                     child: Padding(
  //                       padding: const EdgeInsets.all(8.0),
  //                       child: IntrinsicWidth(
  //                         child: IntrinsicHeight(
  //                           child: TextWidget(
  //                             text: "Payment Success",
  //                             color: Colors.white,
  //                             textSize: 24,
  //                             isTitle: true,
  //                           ),
  //                         ),
  //                       ),
  //                     ),
  //                   ),
  //                 ),
  //               ),
  //               InkWell(
  //                 onTap: (){
  //                   orderStatusProvider.updateOrderStatus(OrderStatus.completed);
  //                 },
  //                 child: Center(
  //                   child: Card(
  //                     shape: OutlineInputBorder(
  //                         borderRadius: BorderRadius.circular(24),
  //                         borderSide: const BorderSide(
  //                             color: Colors.orange
  //                         )
  //                     ),
  //                     child: Padding(
  //                       padding: const EdgeInsets.all(8.0),
  //                       child: IntrinsicWidth(
  //                         child: IntrinsicHeight(
  //                           child: TextWidget(
  //                             text: "Complete Order",
  //                             color: Colors.white,
  //                             textSize: 24,
  //                             isTitle: true,
  //                           ),
  //                         ),
  //                       ),
  //                     ),
  //                   ),
  //                 ),
  //               ),
  //
  //
  //             ],
  //           ),
  //
  //         ],
  //       ),
  //     ),
  //   );
  // }
}
