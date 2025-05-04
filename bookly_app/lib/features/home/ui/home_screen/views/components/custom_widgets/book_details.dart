import 'package:bookly_app/features/home/data/model/books/Books.dart';
import 'package:bookly_app/features/home/data/models/best_seller_book_model.dart';
import 'package:bookly_app/features/home/logic/manager/book_details_cubit/book_details_cubit.dart';
import 'package:bookly_app/features/home/ui/home_screen/views/components/custom_widgets/book_details_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetails extends StatelessWidget {
  const BookDetails({super.key, required this.id});
  final String id;
  @override
  Widget build(BuildContext context) {
    // استدعاء getBookDetails فقط إذا كانت الحالة الحالية BookDetailsInitial
    final state = context.read<BookDetailsCubit>().state;
    if (state is BookDetailsInitial) {
      context.read<BookDetailsCubit>().getBookDetails(id: id);
    }

    return BlocBuilder<BookDetailsCubit, BookDetailsState>(
      builder: (c, state) {
        if (state is BookDetailsSuccess) {
          Books bookDetails = state.bookDetails;
          return BookDetailsItem(
            bestSellerBookModel: BestSellerBookModel(
              image:
                  bookDetails.volumeInfo?.imageLinks?.smallThumbnail ??
                  'https://img.freepik.com/free-vector/oops-404-error-with-broken-robot-concept-illustration_114360-1932.jpg',
              title: bookDetails.volumeInfo?.title ?? "Title",
              publisher:
                  bookDetails.volumeInfo?.publisher ?? 'Unknown publisher name',
              pageCount: bookDetails.volumeInfo!.pageCount!.toString(),
            ),
          );
        } else if (state is BookDetailsError) {
          return Center(child: Text(state.error));
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
