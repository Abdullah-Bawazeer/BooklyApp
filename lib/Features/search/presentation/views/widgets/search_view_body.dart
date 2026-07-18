import 'package:book_app/Features/home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:book_app/Features/search/presentation/views/widgets/custom_search_text_field.dart';
import 'package:book_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
      child: Column(
        children: const [
          CustomSearchTextField(),
          SizedBox(height: 16),
          Text('Search Result', style: Styles.textStyle18),
          Expanded(child: SearchResultListView()),
        ],
      ),
    );
  }
}

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: 10,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          // child: BookListViewItem(),
          child: Text('will initialize in future'),
        );
      },
    );
  }
}
