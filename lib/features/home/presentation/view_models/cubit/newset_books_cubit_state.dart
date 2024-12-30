part of 'newset_books_cubit_cubit.dart';

abstract class NewsetBooksState extends Equatable {
  const NewsetBooksState();

  @override
  List<Object> get props => [];
}

final class NewsetBooksCubitInitial extends NewsetBooksState {}

final class NewsetBooksCubitLoading extends NewsetBooksState {}

final class NewsetBooksCubitSuccess extends NewsetBooksState {
  final List<BookModel> books;

  const NewsetBooksCubitSuccess(this.books);
}

final class NewsetBooksCubitFauire extends NewsetBooksState {
  final String errorMessage;

  const NewsetBooksCubitFauire(this.errorMessage);
}
