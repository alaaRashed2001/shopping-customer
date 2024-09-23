import 'package:flutter/material.dart';
import 'package:online_store_customers/Consts/app_color.dart';
import 'package:online_store_customers/Providers/theme_provider.dart';
import 'package:online_store_customers/Screens/Auth/forgot_password.dart';
import 'package:online_store_customers/Screens/Auth/register_screen.dart';
import 'package:online_store_customers/Screens/bottom_bar_screen.dart';
import 'package:online_store_customers/Widgets/socialmedia_login_button.dart';
import 'package:online_store_customers/Widgets/my_button.dart';
import 'package:online_store_customers/Widgets/text_field.dart';
import 'package:online_store_customers/Widgets/text_widget.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late final TextEditingController emailEditingController;
  late final TextEditingController passwordEditingController;

  @override
  void initState() {
    emailEditingController = TextEditingController();
    passwordEditingController = TextEditingController();

    super.initState();
  }

  @override
  void dispose() {
    emailEditingController.dispose();
    passwordEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final Color color =
        themeProvider.getDarkTheme ? Colors.white : Colors.black;
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Positioned.fill(
            child: Opacity(
              opacity: 0.5,
              child: Image.asset(
                'assets/images/buy-on-laptop.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SafeArea(
              child: Center(
                  child: Padding(
            padding: const EdgeInsets.all(33.0),
            child: SingleChildScrollView(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 64,
                    ),
                    TextInputField(
                      controller: emailEditingController,
                      hint: 'test@gmail.com',
                      icon: Icons.email,
                      inputType: TextInputType.emailAddress,
                    ),
                    const SizedBox(
                      height: 33,
                    ),
                    TextInputField(
                      controller: passwordEditingController,
                      hint: '*********',
                      icon: Icons.password,
                      inputType: TextInputType.text,
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const ForgotPassword(),
                            ),
                          );
                        },
                        child: TextWidget(
                            text: "Forgot password?",
                            color: AppColor.lightPrimary,
                            isTitle: true,
                            textSize: 16),
                      ),
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    MyButton(
                      buttonName: 'Login',
                      isLoading: false,
                      onPressed: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const BottomBarScreen(),));
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextWidget(
                      text: "OR connect using :",
                      color: color,
                      textSize: 24,
                      isTitle: true,
                    ),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                            child: SocialMediaLoginButton(
                          onPressed: () {
                            ///
                          },
                          title: "with google",
                          image: 'assets/images/google.png',
                        )),
                        Expanded(
                            child: SocialMediaLoginButton(
                          onPressed: () {
                            ///
                          },
                          title: "with facebook",
                          image: 'assets/images/facebook.png',
                        )),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Do not have an account?",
                            style: TextStyle(fontSize: 18)),
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const RegisterScreen()),
                              );
                            },
                            child: const Text('sign up',
                                style: TextStyle(
                                    fontSize: 18,
                                    decoration: TextDecoration.underline))),
                      ],
                    ),
                  ]),
            ),
          ))),
        ],
      ),
    );
  }
}
