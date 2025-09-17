import 'package:shoppify/core/constants/app_images.dart';

class ProductModel {
  final double price;
  final String productname;
  final String imagePath;

  ProductModel({
    required this.price,
    required this.productname,
    required this.imagePath,
  });

 static final List<ProductModel> products = [
    ProductModel(
      price: 700,
      productname: "Dell G15",
      imagePath: AppImages.laptop2Png,
    ),
    ProductModel(
      price: 500,
      productname: "HP Victus",
      imagePath: AppImages.laptop1Png,
    ),
    ProductModel(
      price: 300,
      productname: "Asus Rog Case",
      imagePath: AppImages.case1Png,
    ),
    ProductModel(
      price: 400,
      productname: "Asus strix Case",
      imagePath: AppImages.case2Png,
    ),
  ];
}
