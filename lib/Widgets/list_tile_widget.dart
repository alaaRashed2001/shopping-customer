import 'package:flutter/material.dart';
import 'package:online_store_customers/Widgets/text_widget.dart';

class ListTileWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;
  final Function onPressed;
  final Color color;
  const ListTileWidget({
    super.key,
    required this.title,
    this.subtitle = "",
    required this.icon,
    required this.onPressed,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: TextWidget(
        text: title,
        color: color,
        textSize: 22,
        // isTitle: true,
      ),
      subtitle: TextWidget(
        text: subtitle ?? "",
        color: color,
        textSize: 18,
      ),
      leading: Icon(icon),
      trailing: const Icon(Icons.arrow_back_ios),
      onTap: () {
        onPressed();
      },
    );
  }
}
