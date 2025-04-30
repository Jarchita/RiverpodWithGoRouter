import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import '../../../ui/pages/main_shell/home/home_page_view.dart';

class HomeRoute extends GoRouteData {
  const HomeRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const HomePageView(label: 'Home page');
  
}