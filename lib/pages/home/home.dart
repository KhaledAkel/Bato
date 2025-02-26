import 'package:flutter/material.dart';
import '../../theme/index.dart' show AppColors;
import 'components/index.dart' show HomeAppBar;

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,

      appBar: HomeAppBar(),
      body: Center(
        child: Text('Welcome to the Home Page!'),
      ),
    );
  }
}