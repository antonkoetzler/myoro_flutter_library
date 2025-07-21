import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

class _FakeRouterDelegate extends RouterDelegate<Object> with ChangeNotifier, PopNavigatorRouterDelegateMixin<Object> {
  @override
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(context) => const Text('Fake Router Content');

  @override
  Future<void> setNewRoutePath(Object configuration) async {}
}

class _FakeRouteInformationParser extends RouteInformationParser<Object> {
  @override
  Future<Object> parseRouteInformation(RouteInformation routeInformation) async => Object();
}

void main() {
  testWidgets('MyoroApp with MyoroAppConfiguration.home', (tester) async {
    await tester.pumpWidget(const MyoroApp(configuration: MyoroAppConfiguration(home: Text('Hello, World!'))));
    await tester.pumpAndSettle();
    expect(find.byType(MyoroApp), findsOneWidget);
    expect(find.text('Hello, World!'), findsOneWidget);
  });

  testWidgets('MyoroApp with MyoroAppConfiguration.router', (tester) async {
    await tester.pumpWidget(
      MyoroApp(
        configuration: MyoroAppConfiguration(
          router: RouterConfig<Object>(
            routerDelegate: _FakeRouterDelegate(),
            routeInformationParser: _FakeRouteInformationParser(),
            routeInformationProvider: PlatformRouteInformationProvider(
              initialRouteInformation: RouteInformation(uri: Uri.parse('/')),
            ),
          ),

          title: 'Router Test App',
        ),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.byType(MyoroApp), findsOneWidget);
    expect(find.text('Fake Router Content'), findsOneWidget);
  });
}
