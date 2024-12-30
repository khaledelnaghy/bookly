import 'package:bookly/core/errors/failuares.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failuare, List<BookModel>>> fetchFeaturedBooks();
Future<Either<Failuare, List<BookModel>>> fetchBestSellerBooks();
}
