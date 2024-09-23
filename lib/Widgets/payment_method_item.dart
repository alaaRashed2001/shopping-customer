import 'package:flutter/material.dart';
class PaymentMethodItem extends StatelessWidget {
  const PaymentMethodItem({
    super.key,
    this.isActive = false,
    required this.image,
  });
  final bool isActive;
  final String image;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 600),
      child: Container(
        width: 103,
        height: 73,
        decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              side: BorderSide(
                  width: 1.5,
                  color: isActive ? Colors.green : const Color(0xff000080),),
              borderRadius: BorderRadius.circular(15),
            ),
            shadows: [
              BoxShadow(
                color: isActive  ? Colors.green : const Color(0xff000080),
                blurRadius: 4,
                offset: const Offset(0, 0),
                spreadRadius: 0,
              ),
            ]),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.white,
          ),
          child: Center(
              child: Image.asset(
            image,
            height:55,
            fit: BoxFit.scaleDown,
          )),
        ),
      ),
    );
  }
}
