import 'package:flutter/material.dart';
import '../../theme/index.dart' show AppColors;

class BottomBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const BottomBar({super.key, required this.currentIndex, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final icons = [
      Icons.home_outlined,
      Icons.explore_outlined,
      Icons.add_outlined,
      Icons.airplane_ticket_outlined,
      Icons.account_circle_outlined,
    ];

    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      color: AppColors.background,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List.generate(icons.length, (index) {
          return IconButton(
            icon: Icon(icons[index]),
            iconSize: 33,
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            color: currentIndex == index ? AppColors.primary : AppColors.text,
            onPressed: () => onTap(index), // Switch tab when pressed
          );
        }),
      ),
    );
  }
}
