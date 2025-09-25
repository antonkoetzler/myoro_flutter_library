import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  Future<void> testCase(WidgetTester tester, VoidCallback callback, [String title = kMyoroEmptyString]) async {
    await tester.pumpWidget(
      MyoroWidgetTester(
        child: MyoroCard(title: title, child: const SizedBox.shrink()),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.byType(MyoroCard), findsOneWidget);
    callback();
  }

  testWidgets('MyoroCard without MyoroCardConfiguration.title provided', (tester) async {
    await testCase(tester, () => expect(find.text(kMyoroEmptyString), findsNothing));
  });

  testWidgets('MyoroCard with MyoroCardConfiguration.title provided', (tester) async {
    final word = faker.lorem.word();
    await testCase(tester, () => expect(find.text(word), findsOneWidget), word);
  });
}
