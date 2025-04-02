import 'package:flutter/material.dart';
import '../../../../components/index.dart' show Logo;
import '../../../../theme/index.dart' show AppColors, AppTextStyles;

class PlanTripAppBar extends StatelessWidget implements PreferredSizeWidget {

  const PlanTripAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
      'Bato',
      style: TextStyle(
        fontFamily:
            AppTextStyles.fontFamilyPrimary, // Use the primary font family
        fontSize: 40.0, // Use size to set the font size
        fontWeight: FontWeight.w900,
        color: AppColors.background, // You can customize the color as needed
      ),
    ),
      backgroundColor: AppColors.primary,
      elevation: 0.0,
      scrolledUnderElevation: 0,
      
    );
  }
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
