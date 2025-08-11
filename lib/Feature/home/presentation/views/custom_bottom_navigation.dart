import 'package:animate_do/animate_do.dart';
import 'package:bike_app/Feature/home/presentation/widgets/icon_button_bar.dart';
import 'package:bike_app/core/theme/app_colors.dart';
import 'package:bike_app/core/utils/app_assets_images.dart';
import 'package:flutter/material.dart';

class CustomBottomNavigation extends StatelessWidget {
  final int currentScreen;
  final void Function(int) onTap;
  const CustomBottomNavigation({
    super.key,
    required this.currentScreen,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return FadeInUp(
      duration: Duration(milliseconds: 800),
      child: Container(
        width: double.infinity,
        height: 60,
        color: AppColors.navBarDark,
        child: Stack(
          alignment: AlignmentDirectional.center,
          clipBehavior: Clip.none,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconBottomBar(
                  icon: AppAssetsImage.bike,
                  isSelected: currentScreen == 0,
                  onTap: () {
                    onTap(0);
                  },
                ),
                IconBottomBar(
                  icon: AppAssetsImage.maps,
                  isSelected: currentScreen == 1,
                  onTap: () {
                    onTap(1);
                  },
                ),
                IconBottomBar(
                  icon: AppAssetsImage.cart,
                  isSelected: currentScreen == 2,
                  onTap: () {
                    onTap(2);
                  },
                ),
                IconBottomBar(
                  icon: AppAssetsImage.profile,
                  isSelected: currentScreen == 3,
                  onTap: () {
                    onTap(3);
                  },
                ),
                IconBottomBar(
                  icon: AppAssetsImage.document,
                  isSelected: currentScreen == 4,
                  onTap: () {
                    onTap(4);
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
