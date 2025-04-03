import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../pages/index.dart' show 
SplashPage, HomePage, ExplorePage, 
PlanTripPage, FlightsPage, HotelsPage, ProfilePage, AddPostPage, 
DonePage, MessengerPage, ViewTripPage, ViewHostPage, 
ChatPage, AddTripPostPage, AddHostPostPage, NotificationPage, FullScreenImage,
ViewDealFlightPage, ViewDealHotelPage, ExploreListPage, OtherProfile,
CommentPage, ReviewsPage;

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
    GoRoute(path: '/done', builder: (context, state) => DonePage()), // Add DonePage route
    GoRoute(path: '/messenger', builder: (context, state) => MessengerPage()), // Add MessengerPage route
    GoRoute(path: '/add_trip', builder: (context, state) => AddTripPostPage()),
    GoRoute(path: '/add_host', builder: (context, state) => AddHostPostPage()),
    GoRoute(path: '/notification', builder: (context, state) => NotificationPage()),
    GoRoute(path: '/view_deal_flight', builder: (context, state) => ViewDealFlightPage()),
    GoRoute(path: '/view_deal_hotel', builder: (context, state) => ViewDealHotelPage()),
    GoRoute(path: '/other_profile', builder: (context, state) => OtherProfile()),
    GoRoute(path: '/explore_list', builder: (context, state) => ExploreListPage()),
    GoRoute(path: '/full_screen_image', builder: (context, state) => FullScreenImage(
      imageUrl: state.extra as String,
    )),
    GoRoute(path: '/comments', builder: (context, state) => CommentPage()),

    GoRoute(
      path: '/view-trip',
      builder: (context, state) {
        final tripId = state.extra as int;
        return ViewTripPage(tripId: tripId);
      },
      

    ), // Add ViewTripPage route
       GoRoute(
      path: '/view-host',
      builder: (context, state) {
        final hostId = state.extra as int;
        return ViewHostPage(hostId: hostId);
      },
      
    ), // Add ViewTripPage route
    GoRoute(
      path: '/chat',
      builder: (context, state) {
        final user = state.extra as Map<String, dynamic>;
        return ChatPage(user: user);
      },
      

    ),
    GoRoute(
      path: '/reviews',
      builder: (context, state) {
        return ReviewsPage();
      },
    ),
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
          path: '/plan_trip',
          builder: (context, state) => PlanTripPage(),
        ),
        GoRoute(
          path: '/my_profile',
          builder: (context, state) => ProfilePage(),
        ),
        GoRoute(
          path: '/add_post',
          builder: (context, state) => AddPostPage(), // Add Post Page
        ),
      ],
    ),
  ],
);
