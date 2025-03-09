import 'package:flutter/material.dart';
import '../../../../theme/index.dart' show AppTextStyles, AppColors;

class Box extends StatelessWidget {
  final Color color;
  final String text;
  final Function()? onTap;

  const Box({
    super.key,
    required this.color,
    required this.text,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: onTap,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Container(
            width: 130,
            height: 130,
            color: color,
            child: Center(
              child: Text(
                text,
                style: TextStyle(
                  color: AppColors.background,
                  fontFamily: AppTextStyles.fontFamilyPrimary,
                  fontWeight: FontWeight.w800,
                  fontSize: 30,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}