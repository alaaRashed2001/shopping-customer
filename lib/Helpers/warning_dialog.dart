import 'package:flutter/material.dart';
import 'package:online_store_customers/Widgets/text_widget.dart';

mixin WarningDialogHelper {
  void navigateTo(
      {required BuildContext context, required Widget destination}) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => destination));
  }

  Future<void> warningDialog({
    required String title,
    required String subtitle,
   required Function onPressed,
    required BuildContext context,
  }) async {
    await showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Row(children: [
              Image.asset(
                'assets/images/warning-sign.png',
                height: 20,
                width: 20,
                fit: BoxFit.fill,
              ),
              const SizedBox(
                width: 8,
              ),
              Text(title),
            ]),
            content: Text(subtitle),
            actions: [
              TextButton(
                onPressed: () {
                  if (Navigator.canPop(context)) {
                    Navigator.pop(context);
                  }
                },
                child: TextWidget(
                  color: Colors.cyan,
                  text: 'Cancel',
                  textSize: 18,
                ),
              ),
              TextButton(
                onPressed: () {
                  onPressed();
                },
                child: TextWidget(
                  color: Colors.red,
                  text: 'OK',
                  textSize: 18,
                ),
              ),
            ],
          );
        });
  }
}
