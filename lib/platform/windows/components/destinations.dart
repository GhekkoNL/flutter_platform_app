import 'package:fluent_ui/fluent_ui.dart';
import 'package:go_router/go_router.dart';
import '../../../app/screens/app_screen1/app_screen1.dart';
import '../../../app/screens/app_screen2/app_screen2.dart';
import '../../../app/screens/app_screen3/app_screen3.dart';
import '../../../app/screens/app_screen4/app_screen4.dart';
import 'navigation.dart';

final rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorKey = GlobalKey<NavigatorState>();
final router = GoRouter(navigatorKey: rootNavigatorKey, routes: [
  ShellRoute(
    navigatorKey: _shellNavigatorKey,
    builder: (context, state, child) {
      return WindowsNavigation(
        shellContext: _shellNavigatorKey.currentContext,
        child: child,
      );
    },
    routes: [
      GoRoute(path: '/', builder: (context, state) => const AppScreen1()),
      GoRoute(path: '/appscreen2', builder: (context, state) => const AppScreen2()),
      GoRoute(path: '/appscreen3', builder: (context, state) => const AppScreen3()),
      GoRoute(path: '/appscreen4', builder: (context, state) => const AppScreen4()),
    ],
  ),
]);