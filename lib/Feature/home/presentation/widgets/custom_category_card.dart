import 'package:bike_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCategoryCard extends StatelessWidget {
  final Widget child;
  final bool selected;
  final double paddingTop;
  const CustomCategoryCard({
    super.key,
    required this.child,
    required this.selected,
    required this.paddingTop,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      child: Card(
        elevation: 3,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.r)),
        margin: EdgeInsets.only(right: 10, top: 10 * paddingTop),
        child: Container(
          width: 55,
          height: 50,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors:
                  selected
                      ? [AppColors.blueLight, AppColors.blueDark]
                      : [AppColors.black2, AppColors.black1],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(8.r),
          ),
          child: Center(child: child),
        ),
      ),
    );
  }
}
