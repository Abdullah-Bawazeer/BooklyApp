import 'package:book_app/Features/home/presentation/views/widgets/book_actions.dart';
import 'package:book_app/Features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:book_app/Features/home/presentation/views/widgets/rating_book.dart';
import 'package:book_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.2),
          child: CustomBookImage(),
        ),
        const SizedBox(height: 43),
        Text(
          'The Jungle Book',
          style: Styles.textStyle30.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 6),
        Opacity(
          opacity: .7,
          child: Text(
            'Rudyard kipling',
            style: Styles.textStyle18.copyWith(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const SizedBox(height: 18),
        const BookRating(mainAxisAlignment: MainAxisAlignment.center),
        const SizedBox(height: 37),
        const BooksAction(),
      ],
    );
  }
}
