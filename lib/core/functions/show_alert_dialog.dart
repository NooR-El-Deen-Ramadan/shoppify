import 'package:flutter/material.dart';
import 'package:shoppify/core/utils/app_fonts.dart';

Future<dynamic> showAlertDialogBox({
  required BuildContext context,
  required String title,
  required String text,
}) {
  return  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: Text(
          title,
          style: AppFontStyles.getSize24(
            fontColor: Colors.green,
            fontWeight: FontWeight.w700,
          ),
        ),
        content: Text(
          text,
          style: AppFontStyles.getSize24(fontWeight: FontWeight.w500),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Close'),
          ),
        ],
      );
    },
  );
}
