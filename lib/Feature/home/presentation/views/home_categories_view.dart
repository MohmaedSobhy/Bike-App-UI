import 'package:bike_app/Feature/home/presentation/widgets/custom_category_card.dart';
import 'package:bike_app/core/theme/app_colors.dart';
import 'package:bike_app/core/utils/app_assets_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeCategoriesView extends StatefulWidget {
  const HomeCategoriesView({super.key});

  @override
  State<HomeCategoriesView> createState() => _HomeCategoriesViewState();
}

class _HomeCategoriesViewState extends State<HomeCategoriesView> {
  int totalItems = 5;
  int selectedIndex = 0;
  List<String> imagesSvg = [
    AppAssetsImage.battery,
    AppAssetsImage.road,
    AppAssetsImage.pyramids,
    AppAssetsImage.helmet,
  ];
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: List.generate(totalItems, (index) {
            return Expanded(
              flex: 1,
              child: CustomCategoryCard(
                selected: index == selectedIndex,
                paddingTop: (totalItems - 1 - index) * 1.35,
                child:
                    (index == 0)
                        ? Text(
                          "All",
                          style: TextStyle(
                            color: AppColors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                        : SvgPicture.asset(imagesSvg[index - 1]),
              ),
            );
          }),
        ),
      ),
    );
  }
}
