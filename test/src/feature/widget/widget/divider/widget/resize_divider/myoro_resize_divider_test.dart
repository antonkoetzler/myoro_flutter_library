import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  Future<void> testCase(WidgetTester tester, Axis direction) async {
    await tester.pumpWidget(
      MyoroWidgetTester(
        child: MyoroResizeDivider(configuration: MyoroResizeDividerConfiguration.fake().copyWith(direction: direction)),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.byType(MyoroResizeDivider), findsOneWidget);
  }

  testWidgets('Axis.horizontal MyoroResizeDivider', (tester) async => await testCase(tester, Axis.horizontal));
  testWidgets('Axis.vertical MyoroResizeDivider', (tester) async => await testCase(tester, Axis.vertical));
}
