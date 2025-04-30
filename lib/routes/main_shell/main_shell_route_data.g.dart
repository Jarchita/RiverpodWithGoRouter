// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_shell_route_data.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$mainShellRouteData];

RouteBase get $mainShellRouteData => StatefulShellRouteData.$route(
  factory: $MainShellRouteDataExtension._fromState,
  branches: [
    StatefulShellBranchData.$branch(
      routes: [
        GoRouteData.$route(
          path: '/home',

          factory: $HomeRouteExtension._fromState,
        ),
      ],
    ),
    StatefulShellBranchData.$branch(
      initialLocation: NotificationsShellBranchData.$initialLocation,

      routes: [
        GoRouteData.$route(
          path: '/notifications/:section',

          factory: $NotificationsRouteDataExtension._fromState,
        ),
      ],
    ),
    StatefulShellBranchData.$branch(
      routes: [
        GoRouteData.$route(
          path: '/people',

          factory: $PeopleRouteDataExtension._fromState,
        ),
      ],
    ),
  ],
);

extension $MainShellRouteDataExtension on MainShellRouteData {
  static MainShellRouteData _fromState(GoRouterState state) =>
      const MainShellRouteData();
}

extension $HomeRouteExtension on HomeRoute {
  static HomeRoute _fromState(GoRouterState state) => const HomeRoute();

  String get location => GoRouteData.$location('/home');

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $NotificationsRouteDataExtension on NotificationsRouteData {
  static NotificationsRouteData _fromState(GoRouterState state) =>
      NotificationsRouteData(
        section:
            _$NotificationsPageSectionEnumMap._$fromName(
              state.pathParameters['section']!,
            )!,
      );

  String get location => GoRouteData.$location(
    '/notifications/${Uri.encodeComponent(_$NotificationsPageSectionEnumMap[section]!)}',
  );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

const _$NotificationsPageSectionEnumMap = {
  NotificationsPageSection.latest: 'latest',
  NotificationsPageSection.old: 'old',
  NotificationsPageSection.archive: 'archive',
};

extension $PeopleRouteDataExtension on PeopleRouteData {
  static PeopleRouteData _fromState(GoRouterState state) =>
      const PeopleRouteData();

  String get location => GoRouteData.$location('/people');

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension<T extends Enum> on Map<T, String> {
  T? _$fromName(String? value) =>
      entries.where((element) => element.value == value).firstOrNull?.key;
}
