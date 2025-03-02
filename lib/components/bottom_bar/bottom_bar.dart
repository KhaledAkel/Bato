import 'package:flutter/material.dart';
import '../../theme/index.dart' show AppColors;

class BottomBar extends StatefulWidget {
  final ValueChanged<int>? onItemSelected;

  BottomBar({super.key, this.onItemSelected});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
    widget.onItemSelected?.call(index); // Notify parent if callback is set
  }

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      height: 60.0,
      shape: const CircularNotchedRectangle(),
      color: AppColors.background,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: List.generate(5, (index) {
            final icons = [
              Icons.home,
              Icons.explore,
              Icons.add,
              Icons.airplane_ticket,
              Icons.account_circle
            ];
        
            return IconButton(
              icon: Icon(icons[index]),
              iconSize: 34,
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              color: selectedIndex == index ? AppColors.primary : AppColors.text,
              onPressed: () => _onItemTapped(index),
            );
          }),
        ),
      ),
    );
  }
}
