import 'package:bookly/constant.dart';
import 'package:bookly/core/utils/app_router.dart';
 import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book%20_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kBookDeatilsView , extra: bookModel);
      },
      child: SizedBox(
        height: 125,
        child: Row(
          children: [
            CustomBookImage(
              imageUrl: bookModel.volumeInfo.imageLinks?.thumbnail ?? "",
            ),
            // AspectRatio(
            //   aspectRatio: 2.3 / 4,
            //   child: Container(
            //     decoration: BoxDecoration(
            //       color: Colors.red,
            //       borderRadius: BorderRadius.circular(8),
            //       image: DecorationImage(
            //           image: AssetImage(AssetsData.testImage),
            //           fit: BoxFit.fill),
            //     ),
            //   ),
            // ),
            SizedBox(
              width: 30,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .5,
                    child: Text(
                    bookModel.volumeInfo.title!,
                      style: Styles.textStyle20
                          .copyWith(fontFamily: kGtSectraFine),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    bookModel.volumeInfo.authors![0],
                    style: Styles.textStyle14,
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Row(children: [
                    Text(
                      "Free",
                      style: Styles.textStyle20
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    const Spacer(),
                    BookRating(
                      rating: bookModel.volumeInfo.averageRating?.round()?? 0,
                      count: bookModel.volumeInfo.ratingsCount ?? 0,
                    ),
                  ]),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
