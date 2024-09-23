import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:online_store_customers/Screens/Auth/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Future<void> navigate() async {
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => const LoginScreen(),
      ));
    });
  }

  Future<void> init() async {
    await navigate();
  }

  @override
  void initState() {
    super.initState();
    init();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color(0xFFa8d5e5),
      body: SafeArea(
        child: Center(
          child: Lottie.asset('assets/lottie/logo-shopping.json'),
        ),
      ),
    );
  }
}
