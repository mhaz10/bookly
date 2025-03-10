import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly/features/home/presentation/views/widgets/featured_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        CustomAppBar(),
        Padding(
          padding: EdgeInsets.only(left: 16),
          child: FeaturedBooksListView(),
        ),
        const SizedBox(height: 50),
        Padding(
          padding: EdgeInsets.only(left: 24.0),
          child: Text('Best Seller', style: Styles.titleMedium, ),
        ),
        BestSellerListViewItem()
      ],
    );
  }
}

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: Row(
        children: [
          AspectRatio(
              aspectRatio: 2.5 / 4,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  image: const DecorationImage(
                    image: NetworkImage(
                        'https://marloesdevries.com/wp-content/uploads/2022/05/greatescapewoodlandsnursinghome.jpg'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
          ),
          Column(
            children: [

            ],
          )
        ],
      ),
    );
  }
}






