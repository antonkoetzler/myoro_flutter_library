import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/src/exports.dart';

final _text = faker.lorem.word();

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
            routerDelegate: MockRouterDelegate(),
            routeInformationParser: MockRouteInformationParser(),
            routeInformationProvider: PlatformRouteInformationProvider(
              initialRouteInformation: RouteInformation(uri: Uri.parse('/')),
            ),
          ),
          builder: (_, _) => Text(_text),
        ),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.byType(MyoroApp), findsOneWidget);
    expect(find.text(_text), findsOneWidget);
  });
}
