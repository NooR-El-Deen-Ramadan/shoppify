import 'package:flutter/material.dart';
import 'package:shoppify/core/utils/app_colors.dart';
import 'package:shoppify/core/utils/app_fonts.dart';

class MainButton extends StatelessWidget {
  const MainButton({
    super.key,
    required this.text,
    this.onPressed,
    this.width = 150,
    this.height = 60,
    this.buttonColor = AppColors.whiteColor,
    this.textColor = AppColors.whiteColor,
  });
  final String text;
  final void Function()? onPressed;
  final double? width;
  final double? height;
  final Color buttonColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: TextButton(
        style: TextButton.styleFrom(backgroundColor: buttonColor),
        onPressed: onPressed,
        child: Text(
          text,
          style: AppFontStyles.getSize24(
            fontWeight: FontWeight.w600,
            fontColor: textColor,
          ),
        ),
      ),
    );
  }
}
