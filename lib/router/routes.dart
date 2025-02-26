import 'package:go_router/go_router.dart';
import '../pages/index.dart' show SplashPage, HomePage;

final GoRouter goRouter = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => SplashPage(),
      ),
      GoRoute(
        path: '/home',
        builder: (context, state) => HomePage(),
      ),
    ],
  );