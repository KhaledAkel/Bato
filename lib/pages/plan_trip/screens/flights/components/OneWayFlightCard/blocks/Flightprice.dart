import 'package:flutter/material.dart';
import 'package:flutter_application_2/theme/app_colors.dart';
import '../../../../../../../theme/index.dart' show AppTextStyles;

class FlightPrice extends StatelessWidget {
  final String price;

  FlightPrice({
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      '$price',
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        fontFamily: AppTextStyles.fontFamilyPrimary,
        color: AppColors.text,
      ),
    );
  }
}
