import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_demo/routes/app_nav_observer.dart';
import 'package:riverpod_demo/routes/error_route.dart';
import 'package:riverpod_demo/routes/main_shell/main_shell_route_data.dart';

class App extends StatelessWidget {
  App({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp.router(
    debugShowCheckedModeBanner: false,
    routerConfig: _router,
  );

  final GoRouter _router = GoRouter(
    routes: $appRoutes,
    initialLocation: '/home',
    errorBuilder: (BuildContext context, GoRouterState state) {
      return ErrorRoute(error: state.error?.message).build(context, state);
    },
    observers: [AppNavObserver()],
    debugLogDiagnostics: true,
  );
}