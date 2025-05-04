import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

void main() {
  testWidgets('MyoroButtonWidgetShowcaseCursorOption', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(
      const MyoroWidgetTester(child: MyoroButtonWidgetShowcaseCursorOption()),
    );
    await tester.pumpAndSettle();

    expect(find.byType(MyoroButtonWidgetShowcaseCursorOption), findsOneWidget);
    expect(
      find.widgetWithText(
        MouseCursorWidgetShowcaseOption,
        '[MyoroButtonConfiguration.cursor]',
      ),
      findsOneWidget,
    );
  });
}
