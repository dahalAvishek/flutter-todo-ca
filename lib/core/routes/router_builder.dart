import 'package:flutter/widgets.dart';
import 'package:flutter_todo/bootstrap/presentation/screens/splash_screen.dart';
import 'package:go_router/go_router.dart';

import '../../layers/presentation/screens/tasks_screen.dart';
import 'app_routes.dart';

final _rootKey = GlobalKey<NavigatorState>();

class NoTransition extends CustomTransitionPage<void> {
  NoTransition({super.key, required super.child})
      : super(
          transitionDuration: const Duration(milliseconds: 0),
          transitionsBuilder: (context, animation, __, child) {
            return child;
          },
        );
}

final GoRouter router = GoRouter(
    navigatorKey: _rootKey,
    initialLocation: SPLASH_ROUTE,
    routerNeglect: true,
    routes: [
      GoRoute(
        path: TASKS_ROUTE,
        pageBuilder: (context, state) {
          return NoTransition(key: state.pageKey, child: const TasksScreen());
        },
      ),
      GoRoute(
        path: SPLASH_ROUTE,
        pageBuilder: (context, state) {
          return NoTransition(key: state.pageKey, child: const SplashScreen());
        },
      )
    ]);
