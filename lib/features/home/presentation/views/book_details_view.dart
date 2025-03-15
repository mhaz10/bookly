import 'package:bookly/features/home/data/models/book_model.dart';
import 'package:bookly/features/home/presentation/manger/similar_books/similar_books_cubit.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_details_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetailsView extends StatefulWidget {
  const BookDetailsView({super.key, required this.book});

  final BookModel book;

  @override
  State<BookDetailsView> createState() => _BookDetailsViewState();
}

class _BookDetailsViewState extends State<BookDetailsView> {

  @override
  void initState() {
    super.initState();
    BlocProvider.of<SimilarBooksCubit>(context).fetchSimilarBooks(
        category: widget.book.volumeInfo.categories![0]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: BookDetailsViewBody()),
    );
  }
}
