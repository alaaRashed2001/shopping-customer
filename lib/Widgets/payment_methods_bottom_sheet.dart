import 'package:flutter/material.dart';
import 'package:online_store_customers/Providers/cart_provider.dart';
import 'package:online_store_customers/Providers/order_provider.dart';
import 'package:online_store_customers/Screens/orders_screen.dart';
import 'package:online_store_customers/Widgets/my_button.dart';
import 'package:online_store_customers/Widgets/payment_methods_list_view.dart';
import 'package:provider/provider.dart';
class PaymentMethodsBottomSheet extends StatelessWidget {
  const PaymentMethodsBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    final cartProvider = Provider.of<CartProvider>(context, listen: false);
    final ordersProvider = Provider.of<OrdersProvider>(context, listen: false);


    return  Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 16,),
          const PaymentMethodsListView(),
          const SizedBox(height: 32,),
        MyButton(buttonName: "continue",
            onPressed: (){
              ordersProvider.addOrder(cartProvider.cartItems).then((_) {
                cartProvider.clearCart();
                Navigator.of(context).push(MaterialPageRoute(builder: (_) =>  const OrdersScreen()));
                });

            }
        ),
        ],
      ),
    );
  }
}
