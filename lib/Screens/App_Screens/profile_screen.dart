import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:online_store_customers/Helpers/warning_dialog.dart';
import 'package:online_store_customers/Providers/theme_provider.dart';
import 'package:online_store_customers/Screens/Auth_Screens/forgot_password.dart';
import 'package:online_store_customers/Screens/Inner_Screens/wishlist_screen.dart';
import 'package:online_store_customers/Widgets/list_tile_widget.dart';
import 'package:online_store_customers/Widgets/text_widget.dart';
import 'package:provider/provider.dart';

import '../Inner_Screens/orders_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen>
    with WarningDialogHelper {
  final TextEditingController _addressEditingController =
      TextEditingController(text: "");

  @override
  void dispose() {
    _addressEditingController.dispose();
    super.dispose();
  }

  Future<void> _showAddressDialog() async {
    await showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text('Update'),
            content: TextField(
              // onChanged: (value) {
              //   print('_addressEditingController.text ${_addressEditingController.text}');
              // },
              controller: _addressEditingController,
              maxLines: 5,
              decoration: const InputDecoration(hintText: "Your address"),
            ),
            actions: [
              TextButton(
                onPressed: () {},
                child: const Text('Update'),
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final Color color =
        themeProvider.getDarkTheme ? Colors.white : Colors.black;
    return Scaffold(
        body: Center(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 15,
              ),
              RichText(
                text: TextSpan(
                  text: 'Hi,  ',
                  style: const TextStyle(
                    color: Colors.cyan,
                    fontSize: 27,
                    fontWeight: FontWeight.bold,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                        text: 'MyName',
                        style: TextStyle(
                          color: color,
                          fontSize: 25,
                          fontWeight: FontWeight.w600,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            //  print('My name is pressed');
                          }),
                  ],
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              TextWidget(
                text: 'Email@email.com',
                color: color,
                textSize: 18,
                // isTitle: true,
              ),
              const SizedBox(
                height: 20,
              ),
              const Divider(
                thickness: 2,
              ),
              const SizedBox(
                height: 20,
              ),
              ListTileWidget(
                  title: 'Address 2',
                  subtitle: 'My subtitle',
                  icon: Icons.account_box,
                  onPressed: () async {
                    await _showAddressDialog();
                  },
                  color: color),

              ListTileWidget(
                  title: 'Orders',
                  icon: Icons.shopping_bag_outlined,
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const OrdersScreen(),));

                  },
                  color: color),

              ListTileWidget(
                  title: 'Wishlist',
                  icon: Icons.heart_broken_outlined,
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const WishlistScreen(),));
                  },
                  color: color),


              ListTileWidget(
                  title: 'Forget password',
                  icon: Icons.password,
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const ForgotPassword(),));
                  },
                  color: color),

              SwitchListTile(
                title: TextWidget(
                  text: themeProvider.getDarkTheme ? 'Dark mode' : 'Light mode',
                  color: color,
                  textSize: 22,
                  // isTitle: true,
                ),
                secondary: Icon(themeProvider.getDarkTheme
                    ? Icons.dark_mode_outlined
                    : Icons.light_mode_outlined),
                value: themeProvider.getDarkTheme,
                onChanged: (value) {
                  themeProvider.setDarkTheme(themeValue: value);
                },
              ),

              ListTileWidget(
                  title: 'Logout',
                  icon: Icons.logout,
                  onPressed: () {
                    warningDialog(
                        title: 'Sign out',
                        subtitle: 'Do you wanna sign out?',
                        onPressed: () {},
                        context: context);
                  },
                  color: color),

              // listTileAsRow(),
            ],
          ),
        ),
      ),
    ));
  }
}
