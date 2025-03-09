import 'package:flutter/material.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: AspectRatio(
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
      ),
    );
  }
}