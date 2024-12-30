part of 'newset_books_cubit_cubit.dart';

abstract class NewsetBooksCubitState extends Equatable {
  const NewsetBooksCubitState();

  @override
  List<Object> get props => [];
}

final class NewsetBooksCubitInitial extends NewsetBooksCubitState {}

final class NewsetBooksCubitLoading extends NewsetBooksCubitState {}

final class NewsetBooksCubitSuccess extends NewsetBooksCubitState {
  final List<BookModel> books;

  const NewsetBooksCubitSuccess(this.books);
}

final class NewsetBooksCubitFauire extends NewsetBooksCubitState {
  final String errorMessage;

  const NewsetBooksCubitFauire(this.errorMessage);
}
