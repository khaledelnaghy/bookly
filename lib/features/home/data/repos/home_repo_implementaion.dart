import 'package:bookly/core/errors/failuares.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImplementaion  implements HomeRepo {
  @override
  Future<Either<Failuare, List<BookModel>>> fetchBestSellerBooks() {
    
    throw UnimplementedError();
  }

  @override
  Future<Either<Failuare, List<BookModel>>> fetchFeaturedBooks() {
     
    throw UnimplementedError();
  }

}