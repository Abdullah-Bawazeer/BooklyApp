import 'package:book_app/Features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:book_app/Features/home/presentation/views/widgets/featured_list_view.dart';
import 'package:book_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          CustomAppBar(),
          FeaturedBooksListView(),
          SizedBox(height: 50),
          Text('Beset Sellers', style: Styles.titleMedium),
        ],
      ),
    );
  }
}
