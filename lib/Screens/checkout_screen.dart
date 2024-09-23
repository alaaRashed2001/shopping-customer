import 'package:flutter/material.dart';
import 'package:online_store_customers/Providers/cart_provider.dart';
import 'package:online_store_customers/Providers/theme_provider.dart';
import 'package:online_store_customers/Widgets/my_button.dart';
import 'package:online_store_customers/Widgets/payment_methods_bottom_sheet.dart';
import 'package:online_store_customers/Widgets/text_widget.dart';
import 'package:provider/provider.dart';

class CheckOutScreen extends StatelessWidget {
  const CheckOutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final Color color =
        themeProvider.getDarkTheme ? Colors.white : Colors.black;
    final cartProvider = Provider.of<CartProvider>(context);
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
          text: "checkout screen",
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
          MyButton(
            buttonName: 'Pay \$${cartProvider.price}',
            isLoading: false,
            onPressed: () {
              showModalBottomSheet(
                  context: context,
                  builder: (context) => const PaymentMethodsBottomSheet(),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16))
              );
            },
          ),
        ],
      ),
    );
  }
}
