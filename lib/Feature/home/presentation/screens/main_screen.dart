import 'package:bike_app/Feature/home/presentation/screens/home_screen.dart';
import 'package:bike_app/Feature/home/presentation/views/custom_bottom_navigation.dart';
import 'package:bike_app/core/utils/app_assets_images.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentScreen = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          constraints: const BoxConstraints.expand(),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(AppAssetsImage.mainBackGround),
              fit: BoxFit.fill,
            ),
          ),

          child: Column(
            children: [
              Expanded(child: HomeScreen()),
              CustomBottomNavigation(
                onTap: onButtonNavigationTap,
                currentScreen: currentScreen,
              ),
            ],
          ),
        ),
      ),
    );
  }

  onButtonNavigationTap(int page) {
    setState(() {
      currentScreen = page;
    });
  }
}
