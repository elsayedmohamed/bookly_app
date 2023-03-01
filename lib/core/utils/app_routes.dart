import '../../Features/home/presentation/view/book_details_view.dart';
import '../../Features/home/presentation/view/home_view.dart';
import '../../Features/splash/presentation/view/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

abstract class AppRoutes {
  /// The route configuration.
  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const SplashViewScreen();
        },
      ),
      GoRoute(
        path: '/homeView',
        builder: (BuildContext context, GoRouterState state) {
          return const HomeView();
        },
      ),
      GoRoute(
        path: '/bookDetailsView',
        builder: (BuildContext context, GoRouterState state) {
          return const BookDetailsView();
        },
      ),
    ],
  );
}
