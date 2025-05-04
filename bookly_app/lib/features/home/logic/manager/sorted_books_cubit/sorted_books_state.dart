part of 'sorted_books_cubit.dart';

@immutable
sealed class SortedBooksState {}

final class SortedBooksInitial extends SortedBooksState {}

final class SortedBooksLoading extends SortedBooksState {}

final class SortedBooksSuccess extends SortedBooksState {
  final List<Books> sortedBooks;
  SortedBooksSuccess({required this.sortedBooks});
}

final class SortedBooksError extends SortedBooksState {
  final String error;
  SortedBooksError({required this.error});
}
