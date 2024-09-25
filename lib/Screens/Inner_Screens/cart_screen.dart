import 'package:flutter/material.dart';
import 'package:online_store_customers/Providers/cart_provider.dart';
import 'package:online_store_customers/Providers/order_provider.dart';
import 'package:online_store_customers/Providers/theme_provider.dart';
import 'package:online_store_customers/Saller/enums_order_status.dart';
import 'package:online_store_customers/Saller/order_status_provider.dart';
import 'package:online_store_customers/Widgets/my_button.dart';
import 'package:online_store_customers/Widgets/payment_methods_bottom_sheet.dart';
import 'package:online_store_customers/Widgets/text_widget.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final Color color =
        themeProvider.getDarkTheme ? Colors.white : Colors.black;
    final cartProvider = Provider.of<CartProvider>(context);
    final orderStatusProvider = Provider.of<OrderStatusProvider>(context);

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back_ios), color: color,),
        automaticallyImplyLeading: false,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        title: TextWidget(
          text: "Cart screen",
          color: color,
          textSize: 24,
          isTitle: true,
        ),
      ),
      body: Column(
        children: [
          SingleChildScrollView(
            child: SizedBox(
              height: 550,
              child: ListView.builder(
                  padding: const EdgeInsets.all(8),
                  itemCount: cartProvider.selectedProducts.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      child: ListTile(
                        title: TextWidget(
                          text: cartProvider.selectedProducts[index].title,
                          color: color,
                          textSize: 16,
                          maxLines: 1,
                        ),
                        subtitle: Text(
                            "${cartProvider.selectedProducts[index].price} - ${cartProvider.selectedProducts[index].location}"),
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(
                              cartProvider.selectedProducts[index].image),
                        ),
                        trailing: IconButton(
                            onPressed: () {
                              cartProvider
                                  .delete(cartProvider.selectedProducts[index]);
                            },
                            icon: const Icon(Icons.remove)),
                      ),
                    );
                  }),
            ),
          ),
          //        ElevatedButton(
          //   onPressed: () {
          //     Provider.of<OrderProvider>(context, listen: false).addOrder(cartProvider.cartItems, cartProvider.totalAmount);
          //     cartProvider.clearCart();
          //     Navigator.pushNamed(context, '/orders');
          //   },
          //   child: Text('Complete Payment'),
          // ),
          MyButton(
            buttonName: 'Pay \$${cartProvider.price}',
            isLoading: false,
            onPressed: () {
              showModalBottomSheet(
                  context: context,
                  builder: (context) => const PaymentMethodsBottomSheet(),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),),
              );
           ///   orderStatusProvider.updateOrderStatus(OrderStatus.checkout);
            },
          ),
        ],
      ),
    );
  }
}

// class CartScreen extends StatelessWidget {
//   const CartScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     final cart = Provider.of<CartProvider>(context);
//     return Scaffold(
//       appBar: AppBar(title: Text('Your Cart')),
//       body: Column(
//         children: [
//           Expanded(
//             child: ListView.builder(
//               itemCount: cart.cartItems.length,
//               itemBuilder: (ctx, i) => ListTile(
//                 title: Text(cart.cartItems[i].product.title ?? ""),
//                 subtitle: Text('Quantity: ${cart.cartItems[i].quantity}'),
//                 trailing: Text('\$${cart.cartItems[i].product.price}'),
//               ),
//             ),
//           ),
//           Text('Total: \$${cart.totalAmount}'),
//           ElevatedButton(
//             onPressed: () {
//               Provider.of<OrderProvider>(context, listen: false).addOrder(cart.cartItems, cart.totalAmount);
//               cart.clearCart();
//               Navigator.pushNamed(context, '/orders');
//             },
//             child: Text('Complete Payment'),
//           ),
//         ],
//       ),
//     );
//   }
// }