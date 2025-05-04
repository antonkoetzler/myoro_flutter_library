import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

void main() {
  testWidgets('StoryboardWidgetTester', (WidgetTester tester) async {
    await tester.pumpWidget(
      const StoryboardWidgetTester(child: SizedBox.shrink()),
    );
    await tester.pumpAndSettle();

    expect(find.byType(StoryboardWidgetTester), findsOneWidget);
    expect(find.byType(MyoroWidgetTester), findsOneWidget);
  });
}
