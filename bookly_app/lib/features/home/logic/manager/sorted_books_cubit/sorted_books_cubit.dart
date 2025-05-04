import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/model/books/Books.dart';
import 'package:bookly_app/features/home/data/repo/home_repo.dart';
import 'package:meta/meta.dart';

part 'sorted_books_state.dart';

class SortedBooksCubit extends Cubit<SortedBooksState> {
  final HomeRepo homeRepoImplement;
  SortedBooksCubit(this.homeRepoImplement) : super(SortedBooksInitial());

  getSortedBooks() async {
    emit(SortedBooksLoading());
    try {
      var result = await homeRepoImplement.fetchSortingBooks();
      //Now result may return error and may return list<books>
      result.fold(
        (error) {
          emit(SortedBooksError(error: error));
        },
        (books) {
          emit(SortedBooksSuccess(sortedBooks: books));
        },
      );
    } catch (error) {
      emit(SortedBooksError(error: error.toString()));
    }
  }
}
