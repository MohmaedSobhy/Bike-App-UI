import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';

class HomeOffersView extends StatelessWidget {
  const HomeOffersView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: CustomPaint(
          painter: PathBorderPainter(),
          child: ClipPath(
            clipper: CustomClipPath(),
            child: Container(
              height: 210,
              padding: EdgeInsets.all(10),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                gradient: LinearGradient(
                  colors: [
                    AppColors.black1.withAlpha((255 * 0.9).toInt()),
                    AppColors.black2.withAlpha((255 * 0.9).toInt()),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Image(
                      image: AssetImage("assets/images/product_four.png"),
                      fit: BoxFit.contain,
                    ),
                  ),
                  Text(
                    "30 %OFF",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class CustomClipPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();

    double radius = 15; // adjust for corner roundness

    // Start at top-left with radius
    path.moveTo(radius, 0);
    path.quadraticBezierTo(0, 0, 0, radius);

    // Left edge to bottom-left with radius
    path.lineTo(0, size.height - radius);
    path.quadraticBezierTo(0, size.height, radius, size.height);

    // Bottom edge to slanted bottom-right with radius
    path.lineTo(size.width - radius, size.height * 0.88);
    path.quadraticBezierTo(
      size.width,
      size.height * 0.88,
      size.width,
      size.height * 0.88 - radius,
    );

    // Right edge to top-right with radius
    path.lineTo(size.width, radius);
    path.quadraticBezierTo(size.width, 0, size.width - radius, 0);

    // Close back to start
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class PathBorderPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final path = CustomClipPath().getClip(size);

    final paint =
        Paint()
          ..color = Colors.grey.withAlpha((255 * 0.35).toInt()) // border color
          ..style = PaintingStyle.stroke
          ..strokeWidth = 5;

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
