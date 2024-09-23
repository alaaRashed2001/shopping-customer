import 'package:flutter/material.dart';
import 'package:online_store_customers/Widgets/payment_method_item.dart';
class PaymentMethodsListView extends StatefulWidget {
  const PaymentMethodsListView({super.key});

  @override
  State<PaymentMethodsListView> createState() => _PaymentMethodsListViewState();
}

class _PaymentMethodsListViewState extends State<PaymentMethodsListView> {
  final List<String> paymentMethodsItems = const [
    "assets/images/card.png",
    "assets/images/paypal.png",
  ];
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:73,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: paymentMethodsItems.length,
        itemBuilder: (context, index) => Padding(
          padding:  const EdgeInsets.symmetric(horizontal: 8),
          child: InkWell(
            onTap: () {
              setState(() {
                activeIndex = index;
              });
            },
            child: PaymentMethodItem(
              image: paymentMethodsItems[index],
              isActive: activeIndex == index,
            ),
          ),
        ),
      ),
    );
  }
}
