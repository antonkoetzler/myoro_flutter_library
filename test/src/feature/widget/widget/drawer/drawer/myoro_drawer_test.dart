import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  testWidgets('MyoroDrawer', (tester) async {
    await tester.pumpWidget(
      MyoroWidgetTester(
        child: MyoroDrawer(
          configuration: MyoroDrawerConfiguration(title: faker.lorem.word(), child: Text(faker.lorem.sentence())),
        ),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.byType(MyoroDrawer), findsOneWidget);
  });

  testWidgets('MyoroDrawer with close button', (tester) async {
    await tester.pumpWidget(
      MyoroWidgetTester(
        child: MyoroDrawer(
          configuration: MyoroDrawerConfiguration(title: faker.lorem.word(), showCloseButton: true, child: Text(faker.lorem.sentence())),
        ),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.byType(MyoroDrawer), findsOneWidget);
    expect(find.byType(MyoroIconTextButton), findsOneWidget);
  });
}
