import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../ui/pages/error_page_view.dart';

class ErrorRoute extends GoRouteData {
  ErrorRoute({required this.error});
  final String? error;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return ErrorPageView(error: error);
  }
}