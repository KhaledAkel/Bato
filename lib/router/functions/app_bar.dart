import 'package:flutter/material.dart';
import '../../pages/home/components/index.dart' show HomeAppBar;
import '../../pages/explore/components/index.dart' show ExploreAppBar;

PreferredSizeWidget? getAppBar(BuildContext context, String? fullPath) {
  switch (fullPath) {
    case '/home':
      return HomeAppBar();

    case '/explore':
      return ExploreAppBar();
      
    default:
      return null; // No AppBar for routes like SplashPage
  }
}
