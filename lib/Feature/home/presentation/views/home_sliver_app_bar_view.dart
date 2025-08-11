import 'package:animate_do/animate_do.dart';
import 'package:bike_app/core/theme/app_colors.dart';
import 'package:bike_app/core/utils/app_assets_images.dart';
import 'package:bike_app/core/widget/custom_linear_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeSliverAppBarView extends StatelessWidget {
  const HomeSliverAppBarView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FadeInRight(
              duration: Duration(milliseconds: 800),
              child: Text(
                "Choose Your Bike",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: AppColors.white,
                ),
              ),
            ),
            FadeInLeft(
              duration: Duration(milliseconds: 800),
              child: CustomLinearButton(
                width: 50,
                height: 50,
                onPressed: () {},
                child: Center(child: SvgPicture.asset(AppAssetsImage.search)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
