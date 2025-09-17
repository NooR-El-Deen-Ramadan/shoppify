import 'package:flutter/material.dart';
import 'package:shoppify/core/models/carosel_model.dart';
import 'package:shoppify/core/utils/app_colors.dart';
import 'package:shoppify/core/utils/app_fonts.dart';

class HomePageCarosel extends StatelessWidget {
  const HomePageCarosel({super.key, required this.pageController});

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: PageView.builder(
        reverse: true,
        allowImplicitScrolling: true,
        controller: pageController,
        itemCount: CaroselModel.pages.length,

        itemBuilder: (context, index) {
          var caroselPage = CaroselModel.pages[index];
          return ClipRRect(
            borderRadius: BorderRadiusGeometry.circular(20),
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: AppColors.secondaryColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                Positioned(
                  right: 0,

                  child: Image.asset(
                    height: 200,
                    caroselPage.imagePath,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  left: 20,
                  top: 20,
                  child: Text(
                    caroselPage.text,
                    style: AppFontStyles.getSize30(
                      fontColor: AppColors.whiteColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
