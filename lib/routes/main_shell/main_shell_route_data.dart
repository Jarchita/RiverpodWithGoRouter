import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_demo/routes/main_shell/people/people_route.dart';
import 'package:riverpod_demo/ui/pages/main_shell/notifications/notification_page_section.dart';

import '../../ui/pages/main_shell/main_page_view.dart';
import 'home/home_route.dart';
import 'home/home_shell_branch_data.dart';
import 'notification/notification_route.dart';
import 'notification/notification_shell_branch_data.dart';
import 'people/people_shell_branch_data.dart';
part 'main_shell_route_data.g.dart';

@TypedStatefulShellRoute<MainShellRouteData>(
  branches: <TypedStatefulShellBranch<StatefulShellBranchData>>[
    TypedStatefulShellBranch<HomeShellBranchData>(
      routes: <TypedRoute<RouteData>>[TypedGoRoute<HomeRoute>(path: '/home')],
    ),
    TypedStatefulShellBranch<NotificationsShellBranchData>(
      routes: <TypedRoute<RouteData>>[
        TypedGoRoute<NotificationsRouteData>(path: '/notifications/:section'),
      ],
    ),
    TypedStatefulShellBranch<PeopleShellBranchData>(
      routes: <TypedRoute<RouteData>>[
        TypedGoRoute<PeopleRouteData>(path: '/people'),
      ],
    ),
  ],
)

class MainShellRouteData extends StatefulShellRouteData {
  const MainShellRouteData();
  @override
  Widget builder(
    BuildContext context,
    GoRouterState state,
    StatefulNavigationShell navigationShell,
  ) {
    return MainPageView(navigationShell: navigationShell);
  }
}
