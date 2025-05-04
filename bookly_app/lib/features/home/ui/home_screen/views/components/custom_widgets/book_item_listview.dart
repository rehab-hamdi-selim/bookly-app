import 'package:bookly_app/features/home/data/model/books/Books.dart';
import 'package:bookly_app/features/home/logic/manager/free_books_cubit/free_books_cubit.dart';
import 'package:bookly_app/features/home/ui/home_screen/views/components/custom_widgets/book_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookItemListview extends StatelessWidget {
  const BookItemListview({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FreeBooksCubit, FreeBooksState>(
      builder: (c, state) {
        if (state is FreeBooksSuccess) {
          List<Books> freeBooks = state.freeBooks;
          print('we get all free books');
          return SizedBox(
            height: 244,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (c, index) {
                return BookItem(
                  id: freeBooks[index].id!,
                  image:
                      freeBooks[index].volumeInfo?.imageLinks?.thumbnail ??
                      'https://img.freepik.com/free-vector/oops-404-error-with-broken-robot-concept-illustration_114360-1932.jpg',
                );
              },
              separatorBuilder:
                  (BuildContext context, int index) => SizedBox(width: 15),
              itemCount: freeBooks.length,
            ),
          );
        } else if (state is FreeBooksError) {
          return Center(child: Text(state.error));
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
