import 'package:flutter/material.dart';
import '../../../../../../../theme/app_colors.dart' show AppColors;

class PostAddIcon extends StatefulWidget {
  const PostAddIcon({Key? key}) : super(key: key);

  @override
  State<PostAddIcon> createState() => _PostAddIconState();
}

class _PostAddIconState extends State<PostAddIcon> {
  bool isClicked = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(isClicked ? Icons.check : Icons.add),
      color: isClicked ? AppColors.primary : Colors.black,
      onPressed: () {
        setState(() {
          isClicked = !isClicked;
        });
      },
    );
  }
}