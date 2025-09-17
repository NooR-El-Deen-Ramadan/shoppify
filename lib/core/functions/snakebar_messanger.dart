import 'package:flutter/material.dart';
import 'package:shoppify/core/utils/app_colors.dart';

void showSnackBar({required BuildContext context, required String message}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: AppColors.primaryColor,
      behavior: SnackBarBehavior.floating,
      margin: EdgeInsets.all(20),
      content: Text(message),
    ),
  );
}
