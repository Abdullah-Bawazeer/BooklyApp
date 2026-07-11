import 'package:book_app/Features/home/presentation/views/widgets/box_details_section.dart';
import 'package:book_app/Features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:book_app/Features/home/presentation/views/widgets/similar_box_section.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: const [
                CustomAppBarBookDetails(),
                BookDetailsSection(),
                Expanded(child: SizedBox(height: 50)),
                SimilarBoxSection(),
                SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
