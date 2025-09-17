import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:shoppify/core/utils/app_colors.dart';
import 'package:shoppify/core/utils/app_fonts.dart';
import 'package:shoppify/features/home/widgets/home_page_carosel.dart';
import 'package:shoppify/features/home/widgets/offers_builder.dart';
import 'package:shoppify/features/home/widgets/products_builder.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isHover = false;
  PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        centerTitle: true,
        title: Text(
          "Our Products",
          style: AppFontStyles.getSize30(
            fontWeight: FontWeight.w600,
            fontColor: AppColors.whiteColor,
          ),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              HomePageCarosel(pageController: pageController),
              const SizedBox(height: 8),
              SmoothPageIndicator(
                controller: pageController,
                count:
                    3, // Replace 3 with the actual number of carousel items if needed
                effect: const ExpandingDotsEffect(
                  activeDotColor: AppColors.secondaryColor,
                  dotColor: Colors.grey,
                  dotHeight: 8,
                  dotWidth: 8,
                  expansionFactor: 3,
                ),
              ),

              Text(
                "Featured Products",
                style: AppFontStyles.getSize30(fontWeight: FontWeight.w600),
              ),
              SizedBox(width: double.infinity, child: ProductsBuilder()),
              Text(
                "Hot Offers",
                style: AppFontStyles.getSize30(fontWeight: FontWeight.w600),
              ),
              Gap(10),
              OffersBuilder(),
            ],
          ),
        ),
      ),
    );
  }
}
