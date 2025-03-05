import 'package:flutter/material.dart';
import '../../../../../../../theme/index.dart' show AppTextStyles;

class HotelLocation extends StatelessWidget {
  final String propertyLocation;

  HotelLocation({super.key, required this.propertyLocation});

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(0, -5),
      child: Text(
        propertyLocation,
        style: TextStyle(
          fontSize: 11,
          fontFamily: AppTextStyles.fontFamilyPrimary,
          color: Colors.grey,
        ),
      ),
    );
  }
}
