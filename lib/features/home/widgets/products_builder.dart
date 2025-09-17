import 'package:flutter/material.dart';
import 'package:shoppify/core/models/product_model.dart';
import 'package:shoppify/features/home/widgets/product_container.dart';

class ProductsBuilder extends StatelessWidget {
  const ProductsBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemCount: ProductModel.products.length,
      itemBuilder: (BuildContext context, int index) {
        ProductModel product = ProductModel.products[index];
    
        return ProductContainer(product: product);
      },
    );
  }
}
