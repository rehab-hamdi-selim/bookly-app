import 'package:bookly_app/core/theming/colors/colors.dart';
import 'package:bookly_app/features/home/ui/home_screen/views/home_screen.dart';
import 'package:bookly_app/features/splash_screen/ui/views/splash_screen.dart';
import 'package:flutter/material.dart';

import 'core/routes/app_router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bookly App',
      routes: {AppRouter.home: (c) => HomeScreen()},
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: AppColors.appColor
        ),
        scaffoldBackgroundColor: AppColors.appColor,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: SplashScreen(),
    );
  }
}
