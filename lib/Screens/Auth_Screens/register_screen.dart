import 'package:flutter/material.dart';
import 'package:online_store_customers/Helpers/snackbar.dart';
import 'package:online_store_customers/Providers/theme_provider.dart';
import 'package:online_store_customers/Screens/Auth_Screens/login_screen.dart';
import 'package:online_store_customers/Widgets/socialmedia_login_button.dart';
import 'package:online_store_customers/Widgets/my_button.dart';
import 'package:online_store_customers/Widgets/text_field.dart';
import 'package:online_store_customers/Widgets/text_widget.dart';
import 'package:provider/provider.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> with SnackBarHelper {
  late final TextEditingController emailEditingController;
  late final TextEditingController passwordEditingController;
  late final TextEditingController mobileEditingController;
  late final TextEditingController usernameEditingController;

  @override
  void initState() {
    emailEditingController = TextEditingController();
    passwordEditingController = TextEditingController();
    mobileEditingController = TextEditingController();
    usernameEditingController = TextEditingController();

    super.initState();
  }

  @override
  void dispose() {
    emailEditingController.dispose();
    passwordEditingController.dispose();
    mobileEditingController.dispose();
    usernameEditingController.dispose();
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
          Positioned(
            top: 80,
            left: 20,
            child: Row(
              children: [

                IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon:  const Icon(
                    Icons.arrow_back_ios_new,

                  ),
                ),
                TextWidget(text: 'Back', color:Colors.white, textSize: 24),
              ],
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
                              controller: usernameEditingController,
                              hint: 'my name',
                              icon: Icons.person,
                              inputType: TextInputType.text,
                            ),
                            const SizedBox(
                              height: 33,
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
                            const SizedBox(
                              height: 33,
                            ),
                            TextInputField(
                              controller: mobileEditingController,
                              hint: '+972 *********',
                              icon: Icons.phone_android,
                              inputType: TextInputType.number,
                            ),
                            // Align(
                            //   alignment: Alignment.centerRight,
                            //   child: TextButton(
                            //     onPressed: () {
                            //       Navigator.of(context).push(
                            //         MaterialPageRoute(
                            //           builder: (context) => const ForgotPassword(),
                            //         ),
                            //       );
                            //     },
                            //     child: TextWidget(
                            //         text: "Forgot password?",
                            //         color: AppColor.lightPrimary,
                            //         isTitle: true,
                            //         textSize: 16),
                            //   ),
                            // ),
                            const SizedBox(
                              height: 32,
                            ),
                            MyButton(
                              buttonName: 'Sign Up',
                              isLoading: false,
                              onPressed: () async{
                              await  performRegister();
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
                                const Text("Already have an account?",
                                    style: TextStyle(fontSize: 18)),
                                TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => const LoginScreen()),
                                      );
                                    },
                                    child: const Text('Log in',
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


  Future<void> performRegister() async {
    if (checkData()) {
      await register();
    }
  }

  Future<void> register() async {}



  bool checkData() {
    if (usernameEditingController.text.isEmpty) {
      showSnackBar(context,
          message: 'The username must be not empty.', error: true);
      return false;
    } else if (mobileEditingController.text.isEmpty) {
      showSnackBar(context,
          message: 'The mobile phone must be not empty.', error: true);
      return false;
    } else if (emailEditingController.text.isEmpty) {
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
