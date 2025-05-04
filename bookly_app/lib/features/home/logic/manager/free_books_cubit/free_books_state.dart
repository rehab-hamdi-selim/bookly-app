part of 'free_books_cubit.dart';

abstract class FreeBooksState {}

final class FreeBooksInitial extends FreeBooksState {}

final class FreeBooksLoading extends FreeBooksState {}

final class FreeBooksSuccess extends FreeBooksState {
  final List<Books> freeBooks;
  FreeBooksSuccess({required this.freeBooks});
}

final class FreeBooksError extends FreeBooksState {
  final String error;
  FreeBooksError({required this.error});
}
