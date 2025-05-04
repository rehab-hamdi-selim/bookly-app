import 'package:bookly_app/core/networking/api_services.dart';
import 'package:bookly_app/features/home/data/model/books/Books.dart';
import 'package:bookly_app/features/home/data/repo/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImplement implements HomeRepo {
  final ApiServices apiServices;

  HomeRepoImplement({required this.apiServices});

  @override
  Future<Either<String, List<Books>>> fetchAllFreeBooks() async {
    try {
      var data = await apiServices.getData(
        endpoint: "v1/volumes?Filtering=full&q=20",
      );
      List<Books> freeBooks = [];
      for (var item in data['items']) {
        freeBooks.add(Books.fromJson(item));
      }
      return right(freeBooks);
    } on Exception catch (error) {
      return left(error.toString());
    }
  }

  @override
  Future<Either<String, List<Books>>> fetchSortingBooks() async {
    try {
      var data = await apiServices.getData(
        endpoint: "v1/volumes?Filtering=free-ebooks&q=20&Sorting=Sorting",
      );
      List<Books> sortedBooks = [];
      for (var item in data['items']) {
        sortedBooks.add(Books.fromJson(item));
      }
      return right(sortedBooks);
    } catch (error) {
      return left(error.toString());
    }
  }

  @override
  Future<Either<String, Books>> fetchBookDetails({required String id}) async {
    try {
      var data = await apiServices.getData(endpoint: "v1/volumes/$id");
      Books bookDetails = Books.fromJson(data);
      return right(bookDetails);
    } catch (error) {
      return left(error.toString());
    }
  }
}
