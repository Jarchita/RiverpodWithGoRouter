import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_demo/routes/route_names.dart';


final routerProvider = Provider<GoRouter>(
  (ref) => GoRouter(
    initialLocation: homeRoute,
    routes: [

    ],
  ),
);
