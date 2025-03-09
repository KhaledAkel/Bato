import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../theme/index.dart' show AppColors;

class DonePage extends StatefulWidget {
  @override
  _DonePageState createState() => _DonePageState();
}

class _DonePageState extends State<DonePage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 1), () {
      context.go('/home'); // Redirect to home page after 2 seconds
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Center(
        child: Icon(
          Icons.check_circle,
          size: 100,
          color: AppColors.primary,
        )
      ),
    );
  }
}