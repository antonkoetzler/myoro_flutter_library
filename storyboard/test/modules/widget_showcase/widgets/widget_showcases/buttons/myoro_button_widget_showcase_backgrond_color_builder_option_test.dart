import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

void main() {
  testWidgets('MyoroButtonWidgetShowcaseBackgroundColorBuilderOption', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(
      const MyoroWidgetTester(
        child: MyoroButtonWidgetShowcaseBackgroundColorBuilderOption(),
      ),
    );
    await tester.pumpAndSettle();

    expect(
      find.byType(MyoroButtonWidgetShowcaseBackgroundColorBuilderOption),
      findsOneWidget,
    );
    expect(
      find.widgetWithText(
        MyoroTapStatusEnumWidgetShowcaseOption,
        'Background color builder',
      ),
      findsOneWidget,
    );
  });
}
