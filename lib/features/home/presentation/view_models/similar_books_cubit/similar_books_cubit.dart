import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'similar_books_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit(this.homeRepo )
      : super(SimilarBooksInitial());
  final HomeRepo homeRepo;
 
  Future<void> fetchSimialrBooks({required String category}) async {
    var result = await homeRepo.fetchSimilarBooks(category: category);
    emit(SimilarBooksLoading());

    result.fold((fauilre) => emit(SimilarBooksFailure(
      fauilre.errorMessage,
    )),
        (books) => emit(SimilarBooksSuccess(books)));
  }
}
