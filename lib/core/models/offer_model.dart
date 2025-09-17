// ignore_for_file: public_member_api_docs, sort_constructors_first
class OfferModel {
  final String headText;
  final String subHeadText;
  final String contText;
  OfferModel({
    required this.headText,
    required this.subHeadText,
    required this.contText,
  });

  static final List<OfferModel> offers = [
    OfferModel(
      headText: "50% off electronics",
      subHeadText: "Limited time offer on all tech gadgets",
      contText: "50% OFF",
    ),
    OfferModel(
      headText: "Free Shipping",
      subHeadText: "No delivery charges on orders above \$50",
      contText: "FREE SHIP",
    ),
    OfferModel(
      headText: "Buy 2 Get 1 Free",
      subHeadText: "On selected accessories and peripherals",
      contText: "B2G1",
    ),
    OfferModel(
      headText: "Student Discount",
      subHeadText: "Extra 20% off with valid student ID",
      contText: "20% OFF",
    ),
  ];
}
