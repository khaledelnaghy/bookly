 
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
 import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'newset_books_cubit_state.dart';

class NewsetBooksCubit extends Cubit<NewsetBooksCubitState> {
  NewsetBooksCubit (this.homeRepo) : super(NewsetBooksCubitInitial());

  final HomeRepo homeRepo;

  Future<void> fetchNewsetBook () async {
    emit(NewsetBooksCubitLoading());
    var result = await homeRepo.fetchNewsetBooks  ();
    result.fold((failure) {
      emit(NewsetBooksCubitFauire(failure.errorMessage));
    }, (books) {
      emit(NewsetBooksCubitSuccess(books));
    });
  }
}
