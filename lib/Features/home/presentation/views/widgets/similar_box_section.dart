import 'package:book_app/Features/home/presentation/views/widgets/similar_box_list_view.dart';
import 'package:book_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class SimilarBoxSection extends StatelessWidget {
  const SimilarBoxSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'You can also like',
          style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w600),
        ),
        const SizedBox(height: 16),
        const SimilerBooksListView(),
      ],
    );
  }
}
