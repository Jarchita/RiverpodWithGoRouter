import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../ui/pages/login_page_view.dart';

part 'login_route.g.dart';

@TypedGoRoute<LoginRoute>(path: '/login')
class LoginRoute extends GoRouteData {
  LoginRoute({this.from});
  final String? from;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return LoginPageView();
  }
}