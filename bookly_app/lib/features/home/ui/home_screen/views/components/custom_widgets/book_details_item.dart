import 'package:bookly_app/core/theming/colors/colors.dart';
import 'package:bookly_app/core/theming/styles/styles.dart';
import 'package:bookly_app/features/home/data/models/best_seller_book_model.dart';
import 'package:flutter/material.dart';

class BookDetailsItem extends StatelessWidget {
  const BookDetailsItem({super.key, required this.bestSellerBookModel});
  final BestSellerBookModel bestSellerBookModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 5,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 20),
          child: Container(
            width: 162,
            height: 243,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              image: DecorationImage(
                //TODO: change assetImage to networkImage
                image: NetworkImage(bestSellerBookModel.image),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        SizedBox(height: 25),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40.0),
          child: Text(
            bestSellerBookModel.title,
            style: AppStyles.textStyle20,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        Text(bestSellerBookModel.publisher, style: AppStyles.textStyle18),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 12.0),
              child: Text('Page count : ', style: AppStyles.textStyle20),
            ),
            Text(
              bestSellerBookModel.pageCount,
              style: AppStyles.textStyle20.copyWith(
                color: AppColors.buttonColor,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
