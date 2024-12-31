import 'package:bookly/core/utils/functions/launch_url.dart';
import 'package:bookly/core/widgets/custom_button.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BookActions extends StatelessWidget {
  const BookActions({super.key, required this.bookModel});
final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          Expanded(
              child: CustomButton(
            text: "Free",
            fontSize: 16,
            backgroundColor: Colors.white,
            textColor: Colors.black,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16),
              bottomLeft: Radius.circular(16),
            ),
          )),
          Expanded(
              child: CustomButton(
            fontSize: 16, 
            text: getText(bookModel),
            onPressed: () {
              lanuchCustomUrl(context, "bookModel.volumeInfo.previewLink!");
              // Uri uri = Uri.parse(bookModel.volumeInfo.previewLink!);
              // if (await canLaunchUrl(uri))
              //  {
              //   await launchUrl(uri);
              //  }
             
            },
            backgroundColor: Color(0xffEF8262),
            textColor: Colors.white,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(16),
              bottomRight: Radius.circular(16),
            ),
          )),
        ],
      ),
    );
  }
  
  String getText(BookModel bookModel) {
    if(bookModel.volumeInfo.previewLink == null)
    {
      return "Not Available";
    }else 
    {
      return "Preview";
    }
  }
}
