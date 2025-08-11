import 'package:bike_app/Feature/home/data/model/product_model.dart';
import 'package:bike_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final ProductModel productModel;
  const ProductCard({super.key, required this.productModel});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: ProductCardClipPath(radius: 15),
      child: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              AppColors.black1.withAlpha((255 * 0.8).toInt()), // top color
              AppColors.black2, // bottom color
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 5,
          children: [
            Flexible(
              flex: 2,
              child: Stack(
                children: [
                  Center(
                    child: Image.asset(productModel.image, fit: BoxFit.contain),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: IconButton(
                      icon: Icon(Icons.favorite_border, color: AppColors.white),
                      onPressed: () {
                        // Handle favorite button tap
                      },
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Road Bike',
                    maxLines: 1,
                    overflow: TextOverflow.fade,
                    style: TextStyle(color: Colors.grey, fontSize: 14),
                  ),
                  const Text(
                    'PEUGEOT - LR01',
                    maxLines: 1,
                    overflow: TextOverflow.fade,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    '\$ 1,999.99',
                    maxLines: 1,
                    overflow: TextOverflow.fade,
                    style: TextStyle(color: Colors.white70, fontSize: 14),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProductCardClipPath extends CustomClipper<Path> {
  final double radius;
  ProductCardClipPath({required this.radius});
  @override
  Path getClip(Size size) {
    // Top-left corner (radius)
    final path = Path();
    path.moveTo(0, 20 + radius);
    path.quadraticBezierTo(0, 20, radius, 20);

    // Diagonal to top-right (no radius here)
    path.lineTo(size.width, 0);

    // Right side down to bottom-right corner (radius)
    path.lineTo(size.width, size.height * 0.9 - radius);
    path.quadraticBezierTo(
      size.width,
      size.height * 0.9,
      size.width - radius,
      size.height * 0.9,
    );

    // Bottom edge to bottom-left corner (radius)
    path.lineTo(radius, size.height);
    path.quadraticBezierTo(0, size.height, 0, size.height - radius);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
