import 'package:flutter/material.dart';
import '../../../../../../../theme/index.dart' show AppTextStyles, AppColors;

class FlightAirlineName extends StatelessWidget {
  final String airlineName;

  const FlightAirlineName({super.key, required this.airlineName});

  @override
  Widget build(BuildContext context) {
    return Text(
      airlineName,
      style: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w900,
        fontFamily: AppTextStyles.fontFamilyPrimary,
        color: AppColors.text,
      ),
    );
  }
}
