import 'package:flutter/material.dart';
import '../../../../../../../theme/index.dart' show AppTextStyles;

class HotelPrice extends StatelessWidget {
  final String pricePerNight;

  HotelPrice({required this.pricePerNight});

  @override
  Widget build(BuildContext context) {
    return Text(
      '\$$pricePerNight ',
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        fontFamily: AppTextStyles.fontFamilyPrimary,
      ),
    );
  }
}
