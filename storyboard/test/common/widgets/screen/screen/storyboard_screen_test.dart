import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:storyboard/storyboard.dart';

import '../../../../widget/storyboard_widget_tester.dart';

void main() {
  testWidgets('StoryboardScreen with [StoryboardScreenConfiguration.onPreviousProvided]', (tester) async {
    var onPreviousExecuted = false;
    await tester.pumpWidget(
      StoryboardWidgetTester(
        child: StoryboardScreen(
          configuration: StoryboardScreenConfiguration.fake().copyWith(onPrevious: () => onPreviousExecuted = true),
        ),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.byType(StoryboardScreen), findsOneWidget);
    await tester.tap(find.byIcon(Icons.keyboard_arrow_left));
    await tester.pumpAndSettle();
    expect(onPreviousExecuted, isTrue);
  });
}
