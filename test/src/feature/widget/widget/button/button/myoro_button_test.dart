import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  Future<void> testCase(
    WidgetTester tester, {
    MyoroButtonConfiguration? configuration,
    required VoidCallback callback,
  }) async {
    await tester.pumpWidget(
      MyoroWidgetTester(
        child: MyoroButton(configuration: configuration, builder: (_, _) => const SizedBox.shrink()),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.byType(MyoroButton), findsOneWidget);
    callback();
  }

  testWidgets('MyoroButton without MyoroButtonConfiguration.tooltipConfiugration provided', (tester) async {
    await testCase(tester, callback: () => expect(find.byType(MyoroTooltip), findsNothing));
  });

  testWidgets('MyoroButton with MyoroButtonConfiguration.tooltipConfiugration provided', (tester) async {
    await testCase(
      tester,
      configuration: MyoroButtonConfiguration.fake().copyWith(tooltipConfiguration: MyoroTooltipConfiguration.fake()),
      callback: () => expect(find.byType(MyoroTooltip), findsOneWidget),
    );
  });

  testWidgets('MyoroButton with MyoroButtonConfiguration.tooltipConfiugration provided', (tester) async {
    await testCase(
      tester,
      configuration: MyoroButtonConfiguration.fake(),
      callback: () => expect(find.byType(MyoroButton), findsOneWidget),
    );
  });
}
