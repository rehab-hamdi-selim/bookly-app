import 'package:bookly_app/features/home/data/models/best_seller_book_model.dart';
import 'package:bookly_app/features/home/ui/home_screen/views/components/custom_widgets/best_seller_book_item.dart';
import 'package:flutter/material.dart';

class BestSellerListview extends StatelessWidget {
  BestSellerListview({super.key});

  final BestSellerBookModel bestSellerBookModel = BestSellerBookModel(
    image: 'assets/images/image 5.png',
    bookName: 'Harry Potter and the Goblet of Fire',
    bookAuthorName: 'J.K. Rowling',
    price: '19.99',
    rate: '4.9',
    numberOfUSerRate: '2390',
  );

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder:
          (c, index) =>
              BestSellerItem(bestSellerBookModel: bestSellerBookModel),
      separatorBuilder:
          (BuildContext context, int index) => SizedBox(height: 20),
      itemCount: 5,
    );
  }
}
