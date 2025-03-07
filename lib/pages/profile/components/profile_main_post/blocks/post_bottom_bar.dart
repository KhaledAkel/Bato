import 'package:flutter/material.dart';
import '../../../../../../../theme/app_colors.dart' show AppColors;

class PostBottomBar extends StatefulWidget {
  @override
  _PostBottomBarState createState() => _PostBottomBarState();
}

class _PostBottomBarState extends State<PostBottomBar> {
  bool isLiked = false;
  bool isSaved = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          TextButton.icon(
      onPressed: () {},
      icon: const Icon(Icons.send, color: AppColors.primary),
      label: const Text("Send a message", style: TextStyle(color: AppColors.primary)),
      style: TextButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        backgroundColor: AppColors.background,
      ),
    ),


        ],
      ),
    );
  }
}
