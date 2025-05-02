import 'package:bookly_app/features/home/ui/home_screen/views/components/custom_widgets/book_item.dart';
import 'package:flutter/material.dart';

class BookItemListview extends StatelessWidget {
  const BookItemListview({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 244,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (c, index) => BookItem(),
        separatorBuilder:
            (BuildContext context, int index) => SizedBox(width: 15),
        itemCount: 5,
      ),
    );
  }
}
