import 'package:bookly/features/home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:flutter/material.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: ListView.builder(
        //shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        itemCount: 10,
        itemBuilder:  (context, index) => Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: const BookListViewItem(),
        ),
      ),
    );
  }
}