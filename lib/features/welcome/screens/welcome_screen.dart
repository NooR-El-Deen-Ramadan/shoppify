import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:shoppify/core/constants/app_images.dart';
import 'package:shoppify/core/functions/navigation.dart';
import 'package:shoppify/core/utils/app_colors.dart';
import 'package:shoppify/core/utils/app_fonts.dart';
import 'package:shoppify/core/widgets/main_button.dart';
import 'package:shoppify/features/authentication/login/login_screen.dart';
import 'package:shoppify/features/authentication/register/register_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [AppColors.primaryColor, AppColors.secondaryColor],
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Shoppify",
                    style: AppFontStyles.getSize30(
                      fontSize: 70,
                      fontColor: AppColors.whiteColor,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  Align(
                    alignment: AlignmentGeometry.center,
                    child: Text(
                      "Your Premium Shopping Experience",
                      style: AppFontStyles.getSize30(
                        fontSize: 20,
                        fontColor: AppColors.whiteColor,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Gap(30),
                  twoImages(),
                  Gap(100),
                  loginAndRegButtons(context),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Row twoImages() {
    return Row(
      children: [
        Expanded(
          child: SizedBox(
            height: 150,
            child: Image.asset(AppImages.laptopPng, fit: BoxFit.cover),
          ),
        ),

        Gap(30),
        Expanded(
          child: SizedBox(
            height: 150,
            child: Image.network(fit: BoxFit.fill, AppImages.accsessurl),
          ),
        ),
      ],
    );
  }

  Row loginAndRegButtons(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: MainButton(
            buttonColor: AppColors.secondaryColor,
            text: "Login",
            onPressed: () {
              pushWithReplacment(context: context, screen: LoginScreen());
            },
          ),
        ),
        Gap(30),
        Expanded(
          child: MainButton(
            buttonColor: AppColors.primaryColor,
            text: "Register",
            onPressed: () {
              pushWithoutReplacment(context: context, screen: RegisterScreen());
            },
          ),
        ),
      ],
    );
  }
}
