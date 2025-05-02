import 'package:bookly_app/core/theming/assets/image_assets.dart';
import 'package:bookly_app/features/home/ui/home_screen/views/components/home_body.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leadingWidth: 120,
          leading: Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Image.asset(AppAssets.logo),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.search, size: 28, color: Colors.white),
              ),
            ),
          ],
        ),
        body: HomeBody(),
      ),
    );
  }
}
