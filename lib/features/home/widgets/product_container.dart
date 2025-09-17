import 'package:flutter/material.dart';
import 'package:shoppify/core/functions/snakebar_messanger.dart';
import 'package:shoppify/core/models/product_model.dart';
import 'package:shoppify/core/utils/app_colors.dart';
import 'package:shoppify/core/utils/app_fonts.dart';

class ProductContainer extends StatefulWidget {
  const ProductContainer({super.key, required this.product});

  final ProductModel product;

  @override
  State<ProductContainer> createState() => _ProductContainerState();
}

class _ProductContainerState extends State<ProductContainer> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
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
        margin: EdgeInsets.all(5),
        decoration: BoxDecoration(
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
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),

        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Image.asset(
                        widget.product.imagePath,
                        fit: BoxFit.cover,
                        height: 100,
                      ),
                    ),
                  ),

                  Text(
                    widget.product.productname,
                    style: AppFontStyles.getSize18(fontWeight: FontWeight.w600),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Text(
                          "${widget.product.price}\$",
                          style: AppFontStyles.getSize18(
                            fontWeight: FontWeight.w600,
                            fontColor: AppColors.primaryColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),Positioned(
            left: 5,
              top: 5,
              child: FloatingActionButton(
                          mini: true,
                          onPressed: () {
                            showSnackBar(context: context, message: "${widget.product.productname} added to the cart successfully");
                          },
                       
                          elevation: 0,
                          backgroundColor: AppColors.primaryColor,
                          child: Icon(
                            Icons.shopping_cart_outlined,
                            color: AppColors.whiteColor,
                          ),
                        ),
            ),
          ],
        ),
      ),
    );
  }
}
