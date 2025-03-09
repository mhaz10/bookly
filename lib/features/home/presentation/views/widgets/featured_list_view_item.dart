import 'package:flutter/material.dart';

class FeaturedListViewItem extends StatelessWidget {
  const FeaturedListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7/4,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image: DecorationImage(
              image: NetworkImage('https://marloesdevries.com/wp-content/uploads/2022/05/greatescapewoodlandsnursinghome.jpg'),
              fit: BoxFit.fill,
            )
        ),
      ),
    );
  }
}