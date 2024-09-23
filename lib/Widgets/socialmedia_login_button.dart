import 'package:flutter/material.dart';
import 'package:online_store_customers/Providers/theme_provider.dart';
import 'package:online_store_customers/Widgets/text_widget.dart';
import 'package:provider/provider.dart';

class SocialMediaLoginButton extends StatelessWidget {
  final String image;
  final String title;
  final Function() onPressed;
  const SocialMediaLoginButton({super.key, required this.image, required this.title, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final Color color =
    themeProvider.getDarkTheme ? Colors.white : Colors.black;
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.all(12),
        backgroundColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            24,
          ),
        ),
      ),
      icon: Center(
          child: Image.asset(
       image,
        height: 30,
        width: 30,
      )),
      label: TextWidget(text: title, color: color, textSize: 16, isTitle: true,maxLines: 1),

      onPressed: onPressed,
    );
  }
}
