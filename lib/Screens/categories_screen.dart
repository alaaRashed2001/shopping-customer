import 'package:flutter/material.dart';
import 'package:online_store_customers/Helpers/dummy_data.dart';
import 'package:online_store_customers/Providers/theme_provider.dart';
import 'package:online_store_customers/Widgets/categories_widget.dart';
import 'package:online_store_customers/Widgets/sub_categories_sheet.dart';
import 'package:online_store_customers/Widgets/text_widget.dart';
import 'package:provider/provider.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final Color color =
        themeProvider.getDarkTheme ? Colors.white : Colors.black;
    List<Color> gridColors = [
      const Color(0xff53B175),
      const Color(0xffF8A44C),
      const Color(0xffF7A593),
      const Color(0xffD3B0E0),
    ];

    List<Map<String, dynamic>> catInfo = [
      {
        'imgPath': 'assets/images/electronics.png',
        'catText': 'electronics',
      },
      {
        'imgPath': 'assets/images/jewelery.png',
        'catText': 'jewelery',
      },
      {
        'imgPath': 'assets/images/mens-clothing.png',
        'catText': 'men\'s clothing',
      },
      {
        'imgPath': 'assets/images/womens-clothing.png',
        'catText': 'women\'s clothing',
      },
    ];
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          title: TextWidget(
            text: 'Categories',
            color: color,
            textSize: 24,
            isTitle: true,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.count(
            crossAxisCount: 2,
            childAspectRatio: 240 / 250,
            crossAxisSpacing: 10, // Vertical spacing
            mainAxisSpacing: 10, // Horizontal spacing
            children: List.generate(dummyCategories.length, (index) {
              return CategoriesWidget(
                onTap: () {
                  print('Category pressed');
                  showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return SubcategoriesSheet(
                          category: dummyCategories[index]);
                    },
                  );
                },
                catText: dummyCategories[index].name,
                imgPath: catInfo[index]['imgPath'],
                passedColor: gridColors[index],
              );
            }),
          ),
        ));
  }
}
