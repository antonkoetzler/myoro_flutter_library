import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  Future<void> testCase(WidgetTester tester, Axis direction) async {
    await tester.pumpWidget(
      MyoroWidgetTester(
        child: MyoroBasicDivider(configuration: MyoroBasicDividerConfiguration.fake().copyWith(direction: direction)),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.byType(MyoroBasicDivider), findsOneWidget);
  }

  testWidgets('Axis.horizontal MyoroBasicDivider', (tester) async => await testCase(tester, Axis.horizontal));

  testWidgets('Axis.vertical MyoroBasicDivider', (tester) async => await testCase(tester, Axis.vertical));
}
