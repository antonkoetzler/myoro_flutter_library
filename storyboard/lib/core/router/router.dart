import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:storyboard/storyboard.dart';

const _widgetNameKey = 'widget_name';

/// [GoRouter] of Storyboard.
final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: _mainScreenBuilder,
      routes: [GoRoute(path: 'widget_showcase/:$_widgetNameKey', builder: _widgetShowcaseScreenBuilder)],
    ),
  ],
);

Widget _mainScreenBuilder(_, __) {
  return const MainScreen();
}

Widget _widgetShowcaseScreenBuilder(_, GoRouterState state) {
  final String widgetName = state.pathParameters[_widgetNameKey]!;
  final MyoroWidgetListEnum? widgetListingEnum = MyoroWidgetListEnum.values.firstWhereOrNull(
    (MyoroWidgetListEnum value) => value.widgetNames.contains(widgetName),
  );
  assert(widgetListingEnum != null, '[router]: $_widgetNameKey provided does not exist in [WidgetListingEnum].');
  return MyoroWidgetListEnum.getWidgetShowcaseScreen(widgetName);
}
