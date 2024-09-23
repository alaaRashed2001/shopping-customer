import 'package:flutter/material.dart';
import 'package:online_store_customers/Providers/theme_provider.dart';
import 'package:online_store_customers/widgets/text_widget.dart';
import 'package:provider/provider.dart';
class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget(
      {Key? key,
      required this.catText,
      required this.imgPath,
      required this.passedColor, required this.onTap})
      : super(key: key);
  final String catText, imgPath;
  final Color passedColor;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final Color color =
    themeProvider.getDarkTheme ? Colors.white : Colors.black;
    double screenWidth = MediaQuery.of(context).size.width;
    return InkWell(


      onTap: onTap,
      child: Container(
        // height: _screenWidth * 0.6,
        decoration: BoxDecoration(
          color: passedColor.withOpacity(0.1),
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: passedColor.withOpacity(0.7),
            width: 2,
          ),
        ),
        child: Column(children: [
          // Container for the image
          Container(
            height: screenWidth * 0.3,
            width: screenWidth * 0.3,
            decoration:  BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                  imgPath,
                  ),
                  fit: BoxFit.fill),
            ),
          ),
          // Category name
          TextWidget(
            text: catText,
            color: color,
            textSize: 20,
            isTitle: true,
          ),
        ]),
      ),
    );
  }
}
