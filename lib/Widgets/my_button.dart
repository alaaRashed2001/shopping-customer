import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({
    Key? key,
    required this.buttonName,
    this.isLoading = false, required this.onPressed,
  }) : super(key: key);

  final String buttonName;
  final bool isLoading;
  final Function()onPressed;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.07,
      width: size.width * 0.8,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: const Color(0xFF181059),
      ),
      child: TextButton(
        onPressed: onPressed,
        child: isLoading
            ? const CircularProgressIndicator()
            : Text(
          buttonName,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}