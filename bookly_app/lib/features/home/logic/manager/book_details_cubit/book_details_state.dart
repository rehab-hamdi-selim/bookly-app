part of 'book_details_cubit.dart';

@immutable
sealed class BookDetailsState {}

final class BookDetailsInitial extends BookDetailsState {}

final class BookDetailsLoading extends BookDetailsState {}

final class BookDetailsSuccess extends BookDetailsState {
  final Books bookDetails;
  BookDetailsSuccess({required this.bookDetails});
}

final class BookDetailsError extends BookDetailsState {
  final String error;
  BookDetailsError({required this.error});
}
