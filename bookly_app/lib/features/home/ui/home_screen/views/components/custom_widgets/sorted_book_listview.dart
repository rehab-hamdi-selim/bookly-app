import 'package:bookly_app/features/home/data/model/books/Books.dart';
import 'package:bookly_app/features/home/data/models/best_seller_book_model.dart';
import 'package:bookly_app/features/home/logic/manager/sorted_books_cubit/sorted_books_cubit.dart';
import 'package:bookly_app/features/home/ui/home_screen/views/components/custom_widgets/sorted_book_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SortedBooksListview extends StatelessWidget {
  const SortedBooksListview({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SortedBooksCubit, SortedBooksState>(
      builder: (c, state) {
        if (state is SortedBooksSuccess) {
          List<Books> sortedBooks = state.sortedBooks;
          print('we get all Sorting free books');
          print(sortedBooks);
          return ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder:
                (c, index) => SortedBookItem(
                  id: sortedBooks[index].id!,
                  bestSellerBookModel: BestSellerBookModel(
                    image:
                        sortedBooks[index]
                            .volumeInfo
                            ?.imageLinks
                            ?.smallThumbnail ??
                        'https://img.freepik.com/free-vector/oops-404-error-with-broken-robot-concept-illustration_114360-1932.jpg',
                    title: sortedBooks[index].volumeInfo?.title ?? "Title",
                    publisher:
                        sortedBooks[index].volumeInfo?.publisher ??
                        'Unknown publisher name',
                    pageCount:
                        sortedBooks[index].volumeInfo!.pageCount!.toString(),
                  ),
                ),
            separatorBuilder:
                (BuildContext context, int index) => SizedBox(height: 20),
            itemCount: sortedBooks.length,
          );
        } else if (state is SortedBooksError) {
          return Center(child: Text(state.error));
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}

/*
*   
* */
