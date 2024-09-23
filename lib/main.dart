import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:online_store_customers/Consts/theme_data.dart';
import 'package:online_store_customers/Providers/cart_provider.dart';
import 'package:online_store_customers/Providers/favorites_provider.dart';
import 'package:online_store_customers/Providers/order_provider.dart';
import 'package:online_store_customers/Providers/product_provider.dart';
import 'package:online_store_customers/Providers/theme_provider.dart';
import 'package:online_store_customers/Screens/Auth/login_screen.dart';
import 'package:online_store_customers/Screens/bottom_bar_screen.dart';
import 'package:online_store_customers/Screens/splash_screen.dart';
import 'package:online_store_customers/Shared_Preferences/shared_preferences.dart';
import 'package:provider/provider.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();

 await SharedPreferencesController().initSharedPreferences();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]).then((_) {
    runApp(const MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ThemeProvider(),),
        ChangeNotifierProvider(create: (context) => CartProvider(),),
        ChangeNotifierProvider(create: (context) => ProductProvider(),),
        ChangeNotifierProvider(create: (context) => OrdersProvider(),),
        ChangeNotifierProvider(create: (context) => FavoritesProvider(),),

      ],
   child: Consumer<ThemeProvider>(
     builder: (context, themeProvider, child) {
       return MaterialApp(
         title: 'Flutter Demo',
         theme: Styles.themeData(isDarkTheme: themeProvider.getTheme(), context: context),
        home: const SplashScreen(),
       );
     }
   ),
    );
  }
}
