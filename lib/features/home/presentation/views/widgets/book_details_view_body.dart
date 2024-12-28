import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_action.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book%20_image.dart';
import 'package:bookly/features/home/presentation/views/widgets/similar_books_list_view.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          CustomBookDetailsAppBar(   ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * .16),
            child: CustomBookImage(),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "The Jungle Book",
            style: Styles.textStyle30,
          ),
          SizedBox(
            height: 6,
          ),
          Opacity(
            opacity: .7,
            child: Text(
              "Rudyard Kipling",
              style: Styles.textStyle18.copyWith(
                  // color: Color(0xff707070),
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w500),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          BookRating(
            mainAxisAlignment: MainAxisAlignment.center,
          ),
          SizedBox(
            height: 15,
          ),
          BookActions(),
          SizedBox(
            height: 15,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text("You can also like",
                style: Styles.textStyle14.copyWith(
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.left),
          ),
           SizedBox(
            height: 10,
          ),
          SimilarBooksListView(),
          
        ],
      ),
    );
  }
}


