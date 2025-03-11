import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.backgroundColor, required this.textColor, this.borderRadius = const BorderRadius.all(Radius.circular(16)), required this.text});

  final String text;
  final Color backgroundColor;
  final Color textColor;
  final BorderRadius borderRadius;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius,
          ),
        ),
        child: Text(
            text,
            style: Styles.textStyle16.copyWith(color: textColor, fontWeight: FontWeight.w900))
    );
  }
}
