import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  testWidgets('MyoroTabView', (tester) async {
    const numberOfTabs = 2;
    final configuration = MyoroTabViewConfiguration.fake().copyWith(
      initiallySelectedTabIndex: faker.randomGenerator.integer(numberOfTabs),
      tabs: List.generate(
        numberOfTabs,
        (_) => MyoroTabViewTab.fake().copyWith(icon: myoroFake<IconData>(), text: faker.lorem.word()),
      ),
    );
    await tester.pumpWidget(MyoroWidgetTester(child: MyoroTabView(configuration: configuration)));
    await tester.pumpAndSettle();
    expect(find.byType(MyoroTabView), findsOneWidget);
    await tester.tap(find.text(configuration.tabs[configuration.initiallySelectedTabIndex].text!));
  });
}
