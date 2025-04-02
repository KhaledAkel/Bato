import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../../../theme/index.dart' show AppTextStyles, AppColors;

class FlightViewDeal extends StatelessWidget {
  FlightViewDeal({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigate to the View Deal Flight page
        context.push('/view_deal_flight');
      },
      child: Padding(
        padding: const EdgeInsets.only(right:8.0),
        child: Container(
          width: 160,
          height: 36,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: AppColors.text, width: 1)),
          child: Align(
            alignment: Alignment.center,
            child: Text(
              'View Deal',
              style: TextStyle(
                color: AppColors.text,
                fontSize: 16,
                fontWeight: FontWeight.bold,
                fontFamily: AppTextStyles.fontFamilyPrimary,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
