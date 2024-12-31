import 'package:bookly/core/widgets/custom_loading_indicator.dart';
import 'package:bookly/core/widgets/custom_widget_error.dart';
import 'package:bookly/features/home/presentation/view_models/newset_books_cubit/newset_books_cubit_cubit.dart';
import 'package:bookly/features/home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsetBooksCubit, NewsetBooksState>(
      builder: (ctx, state) {
        if (state is NewsetBooksCubitSuccess) {
          return ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemBuilder: (ctx, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: BookListViewItem(
                  bookModel: state.books[index],
                ),
              );
            },
            itemCount: state.books.length,
          );
        } else if (state is NewsetBooksCubitFauire) {
          return CustomWError(errorMessage: state.errorMessage);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
