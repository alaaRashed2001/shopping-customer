import 'package:flutter/material.dart';
import 'package:online_store_customers/Saller/enums_order_status.dart';
import 'package:online_store_customers/Saller/order_status_provider.dart';
import 'package:online_store_customers/Widgets/text_widget.dart';
import 'package:provider/provider.dart';

class OrderStatusScreen extends StatelessWidget {
  const OrderStatusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final orderStatusProvider = Provider.of<OrderStatusProvider>(context);

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        title: TextWidget(
          text: "checkout screen",
          color: Colors.teal,
          textSize: 24,
          isTitle: true,
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextWidget(
              text: "Current Order Status:",
              color: Colors.teal,
              textSize: 24,
              isTitle: true,
            ),
            TextWidget(
              text: orderStatusProvider.orderStatus.name,
              color: Colors.redAccent,
              textSize: 24,

            ),

            const SizedBox(height: 20),

            ListView(
              shrinkWrap: true,
              scrollDirection:Axis.vertical ,
              children: [
                InkWell(
                  onTap: (){
                    orderStatusProvider.updateOrderStatus(OrderStatus.addedToCart);
                  },
                  child: Center(
                    child: Card(
                    shape: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(24),
                      borderSide: const BorderSide(
                        color: Colors.yellowAccent
                      )
                    ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: IntrinsicWidth(
                          child: IntrinsicHeight(
                            child: TextWidget(
                              text: "Add to Cart",
                              color: Colors.white,
                              textSize: 24,
                              isTitle: true,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){
                    orderStatusProvider.updateOrderStatus(OrderStatus.checkout);
                  },
                  child: Center(
                    child: Card(
                    shape: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(24),
                      borderSide: const BorderSide(
                        color: Colors.greenAccent
                      )
                    ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: IntrinsicWidth(
                          child: IntrinsicHeight(
                            child: TextWidget(
                              text: "CheckOut",
                              color: Colors.white,
                              textSize: 24,
                              isTitle: true,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

                InkWell(
                  onTap: (){
                    orderStatusProvider.updateOrderStatus(OrderStatus.paymentSuccess);
                  },
                  child: Center(
                    child: Card(
                      shape: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(24),
                          borderSide: const BorderSide(
                              color: Colors.blueAccent
                          )
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: IntrinsicWidth(
                          child: IntrinsicHeight(
                            child: TextWidget(
                              text: "Payment Success",
                              color: Colors.white,
                              textSize: 24,
                              isTitle: true,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){
                    orderStatusProvider.updateOrderStatus(OrderStatus.completed);
                  },
                  child: Center(
                    child: Card(
                      shape: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(24),
                          borderSide: const BorderSide(
                              color: Colors.orange
                          )
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: IntrinsicWidth(
                          child: IntrinsicHeight(
                            child: TextWidget(
                              text: "Complete Order",
                              color: Colors.white,
                              textSize: 24,
                              isTitle: true,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),


              ],
            ),

          ],
        ),
      ),
    );
  }
}
