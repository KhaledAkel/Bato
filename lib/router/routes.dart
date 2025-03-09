import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../pages/index.dart' show SplashPage, HomePage, ExplorePage, PlanTripPage, FlightsPage, HotelsPage, ProfilePage, AddPostPage, AddTripPostPage, DonePage ;
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
    GoRoute(path: '/flights', builder: (context, state) => FlightsPage()),
    GoRoute(path: '/hotels', builder: (context, state) => HotelsPage()),
        GoRoute(
          path: '/add_trip',
          builder: (context, state) => AddTripPostPage(),
        ),
    GoRoute(path: '/done', builder: (context, state) => DonePage()),
      

    ShellRoute(
      builder: (context, state, child) {
        final int pageIndex = getPageIndexOfBottomBar(state.fullPath);
        final List<Widget> pages = [
          HomePage(),
          ExplorePage(),
          AddPostPage(), // Add Post Page
          PlanTripPage(),
          ProfilePage(),
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
          GoRoute(
          path: '/add_post',
          builder: (context, state) => AddPostPage(), // Add Post Page
        ),

        GoRoute(
          path: '/plan_trip',
          builder: (context, state) => PlanTripPage(),
        ),
        GoRoute(
          path: '/my_profile',
          builder: (context, state) => ProfilePage(),
        ),
      
      ],
    ),
  ],
);
