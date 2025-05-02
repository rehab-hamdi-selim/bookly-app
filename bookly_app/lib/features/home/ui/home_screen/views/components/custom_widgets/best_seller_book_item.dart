import 'package:bookly_app/core/theming/styles/styles.dart';
import 'package:bookly_app/features/home/data/models/best_seller_book_model.dart';
import 'package:flutter/material.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key, required this.bestSellerBookModel});

  final BestSellerBookModel bestSellerBookModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        spacing: 25,
        children: [
          Container(
            width: 70,
            height: 105,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              image: DecorationImage(
                //TODO: change assetImage to networkImage
                image: AssetImage(bestSellerBookModel.image),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  bestSellerBookModel.bookName,
                  style: AppStyles.textStyle20,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  bestSellerBookModel.bookAuthorName,
                  style: AppStyles.textStyle18,
                ),
                Row(
                  children: [
                    Text(
                      '${bestSellerBookModel.price} €',
                      style: AppStyles.textStyle20.copyWith(
                        fontWeight: FontWeight.w700,
                        fontSize: 23,
                      ),
                    ),
                    Spacer(),
                    Icon(Icons.star, color: Colors.yellow),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4.0),
                      child: Text(
                        bestSellerBookModel.rate,
                        style: AppStyles.textStyle20,
                      ),
                    ),
                    Text(
                      bestSellerBookModel.numberOfUSerRate,
                      style: AppStyles.textStyle18.copyWith(
                        color: Colors.white70,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
