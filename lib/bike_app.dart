import 'package:bike_app/Feature/home/presentation/screens/main_screen.dart';
import 'package:bike_app/core/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BikeApp extends StatelessWidget {
  const BikeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Bike App',
          theme: AppTheme.darkTheme,
          home: MainScreen(),
        );
      },
      child: MainScreen(),
    );
  }
}
