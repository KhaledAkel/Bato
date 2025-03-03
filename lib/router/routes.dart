import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../pages/index.dart' show SplashPage, HomePage, ExplorePage;
import '../components/index.dart' show BottomBar;
import './functions/index.dart' show getPageIndexOfBottomBar, getBottomBarPageName, getAppBar;
import '../theme/index.dart' show AppColors;

final GoRouter goRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => SplashPage(),
    ),
    ShellRoute(
      builder: (context, state, child) {
        final int pageIndex = getPageIndexOfBottomBar(state.fullPath);
        final List<Widget> pages = [
          HomePage(),
          ExplorePage(),
        ];

        return Scaffold(
          backgroundColor: AppColors.background,
          appBar: getAppBar(context, state.fullPath), // Dynamic AppBar
          body: SafeArea(
            child: IndexedStack(
              index: pageIndex,
              children: pages,
            ),
          ),
          bottomNavigationBar: pageIndex == -1
              ? null
              : BottomBar(
                  currentIndex: pageIndex,
                  onTap: (index) => context.go('/${getBottomBarPageName(index)}'),
                ),
        );
      },
      routes: [
        GoRoute(
          path: '/home',
          builder: (context, state) => HomePage(),
        ),
        GoRoute(
          path: '/explore',
          builder: (context, state) => ExplorePage(),
        ),
      ],
    ),
  ],
);
