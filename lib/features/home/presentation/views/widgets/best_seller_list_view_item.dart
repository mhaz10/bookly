import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
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
          const SizedBox(width: 30),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                  width: MediaQuery.of(context).size.width * .5,
                  child: Text('Harry Potter and the Goblet of Fire',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Styles.textStyle20.copyWith(fontFamily: kGtSectraFine))),
              const SizedBox(height: 3),
              Text('J.K. Rowling', style: Styles.textStyle14),
              const SizedBox(height: 3),
              Row(
                children: [
                  Text('19.99 USD', style: Styles.textStyle20.copyWith(fontWeight: FontWeight.bold)),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}