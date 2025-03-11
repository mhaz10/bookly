import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:bookly/features/search/presentation/views/widgets/custom_search_text_field.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomSearchTextField(),
          const SizedBox(height: 18,),
          Text('Search Results', style: Styles.textStyle18),
          const SizedBox(height: 18,),
          Expanded(
              child: SearchResultListView()),
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
      //shrinkWrap: true,
      padding: EdgeInsets.zero,
      itemCount: 10,
      itemBuilder:  (context, index) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: const BookListViewItem(),
      ),
    );
  }
}

