import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import './components/index.dart' show Box;
import '../../theme/index.dart' show AppColors;


class AddPostPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Box(
            text: 'Trip',
            color: AppColors.primary,
            onTap: () => context.push('/add_trip'),
          ),
          Box(
            text: 'Host',
            color: AppColors.primary,
            onTap: () => context.push('/add_host'),
          ),
        ],
      ),
    );
  }
}