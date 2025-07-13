import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  Future<void> testCase(WidgetTester tester, MyoroCardConfiguration configuration, VoidCallback callback) async {
    await tester.pumpWidget(MyoroWidgetTester(child: MyoroCard(configuration: configuration)));
    await tester.pumpAndSettle();
    expect(find.byType(MyoroCard), findsOneWidget);
    callback();
  }

  testWidgets('MyoroCard without MyoroCardConfiguration.title provided', (tester) async {
    final configuration = MyoroCardConfiguration.fake().copyWith(title: '');
    await testCase(tester, configuration, () => expect(find.text(configuration.title), findsNothing));
  });

  testWidgets('MyoroCard with MyoroCardConfiguration.title provided', (tester) async {
    final configuration = MyoroCardConfiguration.fake().copyWith(title: faker.lorem.word());
    await testCase(tester, configuration, () => expect(find.text(configuration.title), findsOneWidget));
  });
}
