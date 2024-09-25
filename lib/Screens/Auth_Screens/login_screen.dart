import 'package:flutter/material.dart';
import 'package:online_store_customers/Consts/app_color.dart';
import 'package:online_store_customers/Helpers/snackbar.dart';
import 'package:online_store_customers/Providers/theme_provider.dart';
import 'package:online_store_customers/Screens/App_Screens/bottom_bar_screen.dart';
import 'package:online_store_customers/Screens/Auth_Screens/forgot_password.dart';
import 'package:online_store_customers/Screens/Auth_Screens/register_screen.dart';
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

class _LoginScreenState extends State<LoginScreen> with SnackBarHelper {
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
  ///  final googleSignInProvider = Provider.of<GoogleSignInProvider>(context);
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
                      onPressed: () async{
                        await performLogin();

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
                       /// googleSignInProvider.googlelogin();
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
  Future<void> performLogin() async {
    if (checkData()) {
      await login();
    }
  }

  Future<void> login() async {
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const BottomBarScreen(),));
  }


  bool checkData() {
    if (emailEditingController.text.isEmpty) {
      showSnackBar(context,
          message: 'The email address must be not empty.', error: true);
      return false;
    } else if (passwordEditingController.text.isEmpty) {
      showSnackBar(context,
          message: 'The password must be not empty.', error: true);
      return false;
    }
    return true;
  }

}
