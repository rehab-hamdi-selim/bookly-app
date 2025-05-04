import 'package:bookly_app/core/routes/app_router.dart';
import 'package:bookly_app/features/home/ui/home_screen/views/components/custom_widgets/book_details.dart';
import 'package:bookly_app/features/home/ui/home_screen/views/home_details.dart';
import 'package:flutter/material.dart';

class BookItem extends StatelessWidget {
  const BookItem({super.key, required this.image, required this.id});
  final String image;
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
      child: Container(
        width: 150,
        height: 224,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          image: DecorationImage(image: NetworkImage(image), fit: BoxFit.fill),
        ),
      ),
    );
  }
}
