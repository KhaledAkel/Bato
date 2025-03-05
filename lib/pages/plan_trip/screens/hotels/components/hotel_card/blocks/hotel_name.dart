import 'package:flutter/material.dart';
import '../../../../../../../theme/index.dart' show AppTextStyles;

class HotelName extends StatelessWidget {
  final String propertyName;

  HotelName({required this.propertyName});

  @override
  Widget build(BuildContext context) {
    return Text(
      propertyName,
      style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        fontFamily: AppTextStyles.fontFamilyPrimary,
      ),
    );
  }
}
