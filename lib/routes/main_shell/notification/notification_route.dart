import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../ui/pages/main_shell/notifications/notification_page_section.dart';
import '../../../ui/pages/main_shell/notifications/notification_page_view.dart';

class NotificationsRouteData extends GoRouteData {
  const NotificationsRouteData({
    required this.section,
  });

  final NotificationsPageSection section;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return NotificationsPageView(
      section: section,
    );
  }
}