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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              IconButton(
                icon: Icon(
                  isLiked ? Icons.favorite : Icons.favorite_border,
                  color: isLiked ? Colors.red : null,
                ),
                onPressed: () {
                  setState(() {
                    isLiked = !isLiked;
                  });
                },
              ),
              IconButton(
                icon: Icon(Icons.comment),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.send),
                onPressed: () {},
              ),
            ],
          ),
          IconButton(
            icon: Icon(
              isSaved ? Icons.bookmark : Icons.bookmark_border,
              color: isSaved ? AppColors.primary : null,
            ),
            onPressed: () {
              setState(() {
                isSaved = !isSaved;
              });
            },
          ),
        ],
      ),
    );
  }
}
