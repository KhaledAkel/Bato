import 'package:flutter/material.dart';
import '../../../../../../../theme/index.dart' show AppColors;

class HotelRating extends StatelessWidget {
  final String rating;
  final String reviewCount;

  HotelRating({
    required this.rating,
    required this.reviewCount,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.star,
          color: AppColors.text,
          size: 10,
        ),
        Text(
          rating,
          style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w500,
              fontFamily: 'Montserrat',
              color: Colors.grey),
        ),
      ],
    );
  }
}
