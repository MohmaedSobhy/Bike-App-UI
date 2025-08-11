import 'package:bike_app/Feature/home/data/model/product_model.dart';
import 'package:bike_app/Feature/home/presentation/views/home_categories_view.dart';
import 'package:bike_app/Feature/home/presentation/views/home_offers_view.dart';
import 'package:bike_app/Feature/home/presentation/views/home_sliver_app_bar_view.dart';
import 'package:bike_app/Feature/home/presentation/views/sliver_grid_product.dart';
import 'package:bike_app/core/widget/sliver_sized_box.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        HomeSliverAppBarView(),
        HomeOffersView(),
        HomeCategoriesView(),
        SliverSizedBox(height: 10),
        SliverGridProduct(products: ProductModel.getProducts()),
        SliverSizedBox(height: 10),
      ],
    );
  }
}
