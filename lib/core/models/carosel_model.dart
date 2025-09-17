import 'package:shoppify/core/constants/app_images.dart';

class CaroselModel{
final String text;
final String imagePath;

 const CaroselModel({required this.text, required this.imagePath});

static const List<CaroselModel> pages=[

CaroselModel(text: "Laptops",imagePath: AppImages.laptop2Png),
CaroselModel(text: "Accessories",imagePath: AppImages.case2Png),
CaroselModel(text: "Desktop furniture",imagePath: AppImages.laptop1Png),

];

}