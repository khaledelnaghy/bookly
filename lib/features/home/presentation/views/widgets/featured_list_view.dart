import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/widgets/custom_loading_indicator.dart';
import 'package:bookly/core/widgets/custom_widget_error.dart';
  import 'package:bookly/features/home/presentation/view_models/featured_books_cubit/featured_books_cubit_cubit.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book%20_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class FeaturedBoxListView extends StatelessWidget {
  const FeaturedBoxListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .3,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: GestureDetector(
                    onTap: () {
                      GoRouter.of(context)
                          .push(AppRouter.kBookDeatilsView, extra: state.books[index]);
                    },
                    child: CustomBookImage(
                      imageUrl:
                          state.books[index].volumeInfo.imageLinks?.thumbnail ??
                              "",
                    ),
                  ),
                );
              },
            ),
          );
        } else if (state is FeaturedBooksFauire) {
          return CustomWError(errorMessage: state.errMessage);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
