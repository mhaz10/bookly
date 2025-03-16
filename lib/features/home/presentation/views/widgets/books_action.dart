import 'package:bookly/core/widgets/custom_button.dart';
import 'package:bookly/features/home/data/models/book_model.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key, required this.book});

  final BookModel book;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
                text: '19.99 USD',
                backgroundColor: Colors.white,
                textColor: Colors.black,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(16),
                    bottomLeft: Radius.circular(16)
                )
            ),),
          Expanded(
            child: CustomButton(
                onPressed: () async {
                  Uri uri = Uri.parse(book.volumeInfo.previewLink!);
                  if (await canLaunchUrl(uri)) {
                    await launchUrl(uri);
                  }
                },
                text: 'Free Preview',
                backgroundColor: Color(0xffEF8262),
                textColor: Colors.white,
                borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(16),
                    bottomRight: Radius.circular(16)
                )
            ),),
        ],
      ),
    );
  }
}