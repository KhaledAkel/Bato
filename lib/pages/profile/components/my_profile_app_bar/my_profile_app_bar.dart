import 'package:flutter/material.dart';
import '../../../../../theme/index.dart' show AppColors, AppTextStyles;

class MyProfileAppBar extends StatelessWidget implements PreferredSizeWidget {

  const MyProfileAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        children: [
          Text(
          'imn34Alex',
          style: TextStyle(
            fontFamily:
                AppTextStyles.fontFamilyPrimary, // Use the primary font family
            fontSize: 15.0, // Use size to set the font size
            fontWeight: FontWeight.w900,
            color: AppColors.text, // You can customize the color as needed
          ),
              ),

         Icon(
          Icons.arrow_drop_down,
          color: AppColors.text,
          size: 20.0,
         )
        ],
      ),
      backgroundColor: AppColors.background,
      elevation: 0.0,
      scrolledUnderElevation: 0,
      
      actions: [
        IconButton(
          icon: Icon(Icons.settings_outlined),
          iconSize: 25,
          color: AppColors.text,
          onPressed: () {},
        ),
      ],
      
    );
  }
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
