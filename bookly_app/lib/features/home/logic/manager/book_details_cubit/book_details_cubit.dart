import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/repo/home_repo.dart';
import 'package:meta/meta.dart';

import '../../../data/model/books/Books.dart';

part 'book_details_state.dart';

class BookDetailsCubit extends Cubit<BookDetailsState> {
  final HomeRepo homeRepoImplement;

  BookDetailsCubit(this.homeRepoImplement) : super(BookDetailsInitial());

  getBookDetails({required String id}) async {
    try {
      var result = await homeRepoImplement.fetchBookDetails(id: id);
      result.fold(
        (error) {
          emit(BookDetailsError(error: error));
        },
        (book) {
          emit(BookDetailsSuccess(bookDetails: book));
        },
      );
    } catch (error) {
      emit(BookDetailsError(error: error.toString()));
    }
  }
}
