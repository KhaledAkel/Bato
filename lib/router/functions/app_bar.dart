import 'package:flutter/material.dart';
import '../../pages/home/components/index.dart' show HomeAppBar;
import '../../pages/explore/components/index.dart' show ExploreAppBar;
import '../../pages/plan_trip/components/index.dart' show PlanTripAppBar;

PreferredSizeWidget? getAppBar(BuildContext context, String? fullPath) {
  switch (fullPath) {
    case '/home':
      return HomeAppBar();

    case '/explore':
      return ExploreAppBar();

    case '/plan_trip':
      return PlanTripAppBar();
      
      
    default:
      return null; // No AppBar for routes like SplashPage
  }
}
