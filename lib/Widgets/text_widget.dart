import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final String text;
  final Color color;
  final double textSize;
  bool isTitle;
  int maxLines;
  TextWidget({
    Key? key,
    required this.text,
    required this.color,
    required this.textSize,
    this.isTitle = false,
    this.maxLines = 10,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLines,

      style: TextStyle(

          overflow: TextOverflow.ellipsis,
          color: color,
          fontSize: textSize,
          fontWeight: isTitle ? FontWeight.bold : FontWeight.normal),
    );
  }
}
