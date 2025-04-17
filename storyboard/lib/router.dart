import 'package:go_router/go_router.dart';
import 'package:storyboard/storyboard.dart';

/// [GoRouter] of Storyboard.
final router = GoRouter(
  routes: [GoRoute(path: '/', builder: (_, __) => const MainScreen())],
);
