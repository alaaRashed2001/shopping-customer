import 'package:flutter/material.dart';
import 'package:online_store_customers/Widgets/my_button.dart';
import 'package:online_store_customers/Widgets/text_field.dart';
import 'package:online_store_customers/Widgets/text_widget.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  late TextEditingController emailEditingController;
  @override
  void initState() {
    emailEditingController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    emailEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

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
                padding: const EdgeInsets.all(30.0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextWidget(
                          text: 'Enter your email to reset your password',
                          color: Colors.white,
                          textSize: 24),
                      const SizedBox(
                        height: 16,
                      ),
                      TextInputField(
                        controller: emailEditingController,
                        hint: 'test@gmail.com',
                        icon: Icons.email,
                        inputType: TextInputType.emailAddress,
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      MyButton(
                        buttonName: 'Reset Password',
                        isLoading: false,
                        onPressed: () {},
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
