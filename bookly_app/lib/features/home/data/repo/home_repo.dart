import 'package:bookly_app/features/home/data/model/books/Books.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<String, List<Books>>> fetchAllFreeBooks();
  Future<Either<String, List<Books>>> fetchSortingBooks();
  Future<Either<String, Books>> fetchBookDetails({required String id});
}
