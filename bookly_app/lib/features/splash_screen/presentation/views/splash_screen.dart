import 'package:bookly_app/core/assets/image_assets.dart';
import 'package:bookly_app/core/theming/styles/styles.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late AnimationController animationController;
  late AnimationController animationController2;

  late Animation<Offset> animation;
  late Animation<Offset> animation2;

  @override
  void initState() {
    animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 4),
    );
    animationController2 = AnimationController(
      vsync: this,
      duration: Duration(seconds: 4),
    );
    animation = Tween<Offset>(
      begin: Offset(0, 7),
      end: Offset(0, 0),
    ).animate(animationController);
    animation2 = Tween<Offset>(
      begin: Offset(0, -2.7),
      end: Offset(0, 0),
    ).animate(animationController2);
    animationController.forward();
    animationController2.forward();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          spacing: 25,
          children: [
            SlideTransition(
              position: animation2,
              child: Container(
                width: 200,
                height: 130,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(AppAssets.logo),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            SlideTransition(
              position: animation,
              child: Text('Read Books', style: AppStyles.textStyle20),
            ),
          ],
        ),
      ),
    );
  }
}
