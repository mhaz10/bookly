import 'package:bookly/core/widgets/custom_error_widget.dart';
import 'package:bookly/core/widgets/custom_loading_indicator.dart';
import 'package:bookly/features/home/presentation/manger/news_books/news_books_cubit.dart';
import 'package:bookly/features/home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: BlocBuilder<NewsBooksCubit, NewsBooksState>(
        builder: (context, state) {
          if (state is NewsBooksSuccess) {
            return ListView.builder(
              //shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
              itemCount: state.books.length,
              itemBuilder: (context, index) =>
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: BookListViewItem(book: state.books[index]),
                  ),
            );
          } else if (state is NewsBooksFailure){
            return CustomErrorWidget(errorMessage: state.errorMessage);
          } else {
            return const CustomLoadingIndicator();
          }
        },
      ),
    );
  }
}