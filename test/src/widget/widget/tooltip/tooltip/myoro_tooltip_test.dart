import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  testWidgets('MyoroTooltip', (tester) async {
    await tester.pumpWidget(
      MyoroWidgetTester(
        child: MyoroTooltip(
          configuration: MyoroTooltipConfiguration.fake().copyWith(marginProvided: false),
          child: const SizedBox.shrink(),
        ),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.byType(MyoroTooltip), findsOneWidget);
  });
}
