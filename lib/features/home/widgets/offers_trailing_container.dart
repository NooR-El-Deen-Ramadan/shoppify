import 'package:flutter/material.dart';
import 'package:shoppify/core/models/offer_model.dart';
import 'package:shoppify/core/utils/app_colors.dart';
import 'package:shoppify/core/utils/app_fonts.dart';

class OffersTrailingContainer extends StatelessWidget {
  const OffersTrailingContainer({
    super.key,
    required this.offer,
  });

  final OfferModel offer;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.transparent),
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(
          colors: [
            AppColors.primaryColor,
            AppColors.secondaryColor,
          ],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          offer.contText,
          style: AppFontStyles.getSize18(
            fontWeight: FontWeight.w600,
            fontColor: AppColors.whiteColor,
          ),
        ),
      ),
    );
  }
}
