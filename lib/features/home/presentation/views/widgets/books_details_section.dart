import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/data/models/book_model.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly/features/home/presentation/views/widgets/books_action.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.book});

  final BookModel book;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * .2),
          child: CustomBookImage(imageUrl: book.volumeInfo.imageLinks?.thumbnail ?? ''),
        ),
        const SizedBox(height: 43),
        Text(book.volumeInfo.title!, textAlign: TextAlign.center, style: Styles.textStyle30),
        const SizedBox(height: 6),
        Opacity(
          opacity: 0.7,
          child: Text(book.volumeInfo.authors?[0] ?? '', style: Styles.textStyle18.copyWith(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w500
          )),
        ),
        const SizedBox(height: 18),
        BookRating(mainAxisAlignment: MainAxisAlignment.center,rating: book.volumeInfo.averageRating, count: book.volumeInfo.ratingsCount ?? 0,),
        const SizedBox(height: 37,),
        BooksAction(book: book,),
      ],
    );
  }
}