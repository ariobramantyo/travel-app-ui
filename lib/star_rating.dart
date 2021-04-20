import 'package:flutter/material.dart';

class StarRating extends StatelessWidget {
  final int rating;

  const StarRating({Key key, @required this.rating}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(5, (index) {
        return Icon(
          index < rating ? Icons.star : Icons.star_border,
          color: Colors.yellow,
          size: 20,
        );
      }),
    );
  }
}
