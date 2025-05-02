import 'package:bookly_app/core/theming/styles/styles.dart';
import 'package:bookly_app/features/home/ui/home_screen/views/components/custom_widgets/best_seller_listview.dart';
import 'package:bookly_app/features/home/ui/home_screen/views/components/custom_widgets/book_item_listview.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 15,
          children: [
            BookItemListview(),
            SizedBox(height: 20),
            Text('Best Seller', style: AppStyles.textStyle20),
            BestSellerListview(),
          ],
        ),
      ),
    );
  }
}
