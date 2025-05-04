import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/model/books/Books.dart';
import 'package:bookly_app/features/home/data/repo/home_repo.dart';

part 'free_books_state.dart';

class FreeBooksCubit extends Cubit<FreeBooksState> {
  HomeRepo homeRepoImplement;

  FreeBooksCubit(this.homeRepoImplement) : super(FreeBooksInitial());

  getAllFreeBooks() async {
    emit(FreeBooksLoading());
    try {
      var result = await homeRepoImplement.fetchAllFreeBooks();
      //Now result may return error and may return list<books>
      result.fold(
        (error) {
          emit(FreeBooksError(error: error));
        },
        (books) {
          print('we get books form cubit');
          emit(FreeBooksSuccess(freeBooks: books));
        },
      );
    } catch (error) {
      emit(FreeBooksError(error: error.toString()));
    }
  }
}
