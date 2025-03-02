import 'package:flutter/material.dart';
import '../../../../components/index.dart' show Logo;
import '../../../../theme/index.dart' show AppColors;

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {

  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Logo(size: 40.0),
      backgroundColor: AppColors.background,
      elevation: 0.0,
      scrolledUnderElevation: 0,
      
      actions: [
        IconButton(
          icon: Icon(Icons.notifications_none),
          iconSize: 25,
          color: AppColors.text,
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(Icons.message_outlined),
          color: AppColors.text,
          iconSize: 25,
          onPressed: () {},
        ),
      ],
      
    );
  }
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
