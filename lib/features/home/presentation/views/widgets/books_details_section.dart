
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_action.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book%20_image.dart';
import 'package:flutter/material.dart';

class BooksDetailsSection extends StatelessWidget {
  const BooksDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
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
          height: 3,
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
          height: 10,
        ),
        BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        SizedBox(
          height: 15,
        ),
        BookActions(),
      ],
    );
  }
}