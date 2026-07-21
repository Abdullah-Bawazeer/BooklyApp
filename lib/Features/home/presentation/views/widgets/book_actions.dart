import 'package:book_app/Features/home/data/models/book_model/book_model.dart';
import 'package:book_app/core/widgets/custom_botton.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children:  [
          Expanded(
            child: CustomButton(
              backgroundColor: Colors.white,
              textColor: Colors.black,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                bottomLeft: Radius.circular(16),
              ),
              text: '19.99 €',
            ),
          ),

          Expanded(
            child: CustomButton(
              onPressed: () async {
                final Uri _url = Uri.parse(bookModel.volumeInfo.previewLink ?? '');
                if (!await launchUrl(_url)) {
                  throw Exception('Could not launch $_url');
                }
              },
              text: 'Free Preview',
              fontSize: 16,
              backgroundColor: Color(0xffEF8262),
              textColor: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
