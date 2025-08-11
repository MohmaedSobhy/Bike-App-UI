import 'package:bike_app/core/theme/app_colors.dart';
import 'package:bike_app/core/utils/app_assets_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class IconBottomBar extends StatelessWidget {
  const IconBottomBar({
    required this.onTap,
    required this.icon,
    required this.isSelected,
    super.key,
  });
  final VoidCallback onTap;
  final String icon;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        children: [
          Visibility(
            visible: isSelected == false,
            child: SvgPicture.asset(
              icon,
              colorFilter: ColorFilter.mode(Colors.grey, BlendMode.srcIn),
              height: 18.h,
            ),
          ),
          if (isSelected)
            Positioned(
              top: -55,
              child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(AppAssetsImage.iconBackGround),
                  ),
                ),
              ),
            ),

          if (isSelected)
            Positioned(
              top: -32,
              child: SvgPicture.asset(
                icon,
                colorFilter: ColorFilter.mode(AppColors.white, BlendMode.srcIn),
                height: 22,
              ),
            ),
        ],
      ),
    ).animate(target: isSelected ? 1 : 0).scaleXY(end: 1.2);
  }
}
