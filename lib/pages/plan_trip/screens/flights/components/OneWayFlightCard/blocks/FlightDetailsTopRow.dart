import 'package:flutter/material.dart';
import '../../../../../../../theme/index.dart' show AppTextStyles, AppColors;

class FlightDetailsTopRow extends StatelessWidget {
  final String departureDate;
  final String arrivalDate;
  final String flightStatus;

  FlightDetailsTopRow({
    required this.departureDate,
    required this.arrivalDate,
    required this.flightStatus,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(right:8.0),
          child: Text(
            '$departureDate - $arrivalDate',
            style: TextStyle(
              fontSize: 16,
              fontFamily: AppTextStyles.fontFamilyPrimary,
              color: AppColors.text,
            ),
          ),
        ),
        Text(
          flightStatus,
          style: TextStyle(
            fontSize: 12,
            fontFamily: AppTextStyles.fontFamilyPrimary,
            color: AppColors.text,
          ),
        ),
      ],
    );
  }
}
