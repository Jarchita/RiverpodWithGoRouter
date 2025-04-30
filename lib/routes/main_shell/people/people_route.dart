
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../ui/pages/main_shell/people/people_page_view.dart';


class PeopleRouteData extends GoRouteData {
  const PeopleRouteData();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const PeoplePageView(label: 'Orders page');
  }
}