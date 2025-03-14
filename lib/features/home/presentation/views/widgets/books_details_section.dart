import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly/features/home/presentation/views/widgets/books_action.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * .2),
          child: CustomBookImage(imageUrl: 'https://marloesdevries.com/wp-content/uploads/2022/05/greatescapewoodlandsnursinghome.jpg',),
        ),
        const SizedBox(height: 43),
        Text('The Jungle Book', style: Styles.textStyle30),
        const SizedBox(height: 6),
        Opacity(
          opacity: 0.7,
          child: Text('Rudyard Kipling', style: Styles.textStyle18.copyWith(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w500
          )),
        ),
        const SizedBox(height: 18),
        BookRating(mainAxisAlignment: MainAxisAlignment.center,rating: 5, count: 250,),
        const SizedBox(height: 37,),
        const BooksAction(),
      ],
    );
  }
}