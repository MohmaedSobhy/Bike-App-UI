import 'package:bike_app/Feature/home/data/model/product_model.dart';
import 'package:bike_app/Feature/home/presentation/widgets/product_card.dart';
import 'package:flutter/material.dart';

class SliverGridProduct extends StatelessWidget {
  final List<ProductModel> products;
  const SliverGridProduct({super.key, required this.products});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsets.symmetric(horizontal: 8),
      sliver: SliverGrid(
        delegate: SliverChildBuilderDelegate((context, index) {
          return ProductCard(productModel: products[index]);
        }, childCount: products.length),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 8.5,
          childAspectRatio: 0.7,
        ),
      ),
    );
  }
}
