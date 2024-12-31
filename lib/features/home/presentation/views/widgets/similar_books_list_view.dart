import 'package:bookly/core/widgets/custom_loading_indicator.dart';
import 'package:bookly/core/widgets/custom_widget_error.dart';
import 'package:bookly/features/home/presentation/view_models/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book%20_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      
      builder: (context, state) {
        if (state is SimilarBooksSuccess) {
  return SizedBox(
    height: MediaQuery.of(context).size.height * .14,
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 10,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: CustomBookImage(
            imageUrl:
                "https://static.wixstatic.com/media/cd9874_d395ebb9160b4ef8bb623b9f15701d48~mv2_d_3588_3588_s_4_2.jpg/v1/fill/w_640,h_640,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/cd9874_d395ebb9160b4ef8bb623b9f15701d48~mv2_d_3588_3588_s_4_2.jpg",
          ),
        );
      },
    ),
  );
} else if (state is SimilarBooksFailure)
{
  return   CustomWError(errorMessage: state.errorMessage);
} else {
  return const CustomLoadingIndicator();
}
      },
    );
  }
}
