import 'package:bookly_app/core/theming/colors/colors.dart';
import 'package:bookly_app/core/theming/styles/styles.dart';
import 'package:bookly_app/features/home/data/models/best_seller_book_model.dart';
import 'package:bookly_app/features/home/ui/home_screen/views/home_details.dart';
import 'package:flutter/material.dart';

class SortedBookItem extends StatelessWidget {
  const SortedBookItem({
    super.key,
    required this.bestSellerBookModel,
    required this.id,
  });

  final BestSellerBookModel bestSellerBookModel;
  final String id;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (c) => HomeDetails(id: id)),
        );
      },
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
                image: NetworkImage(bestSellerBookModel.image),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  bestSellerBookModel.title,
                  style: AppStyles.textStyle20,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  bestSellerBookModel.publisher,
                  style: AppStyles.textStyle18,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 12.0),
                      child: Text(
                        'Page count : ',
                        style: AppStyles.textStyle20,
                      ),
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
            ),
          ),
        ],
      ),
    );
  }
}
