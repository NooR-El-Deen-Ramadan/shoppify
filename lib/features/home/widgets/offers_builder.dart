import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:shoppify/core/models/offer_model.dart';
import 'package:shoppify/core/utils/app_fonts.dart';
import 'package:shoppify/features/home/widgets/offers_trailing_container.dart';

class OffersBuilder extends StatefulWidget {
  const OffersBuilder({super.key});

  @override
  State<OffersBuilder> createState() => _OffersBuilderState();
}

class _OffersBuilderState extends State<OffersBuilder> {
  @override
  Widget build(BuildContext context) {
    bool isHover = false;
    return ListView.separated(
      shrinkWrap: true,
      itemCount: OfferModel.offers.length,
      itemBuilder: (BuildContext context, int index) {
        OfferModel offer = OfferModel.offers[index];
        return MouseRegion(
          onEnter: (_) {
            setState(() {
              isHover = true;
            });
          },
          onExit: (_) {
            setState(() {
              isHover = false;
            });
          },
          child: AnimatedContainer(
            duration: Duration(milliseconds: 500),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: isHover
                  ? [
                      BoxShadow(
                        // ignore: deprecated_member_use
                        color: Colors.black.withOpacity(0.25),
                        blurRadius: 12,
                        offset: const Offset(0, 6),
                      ),
                    ]
                  : [],
            ),
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          offer.headText,
                          style: AppFontStyles.getSize24(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          offer.subHeadText,
                          style: AppFontStyles.getSize12(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  OffersTrailingContainer(offer: offer),
                ],
              ),
            ),
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return Gap(5);
      },
    );
  }
}
