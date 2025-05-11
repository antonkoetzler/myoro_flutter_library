import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// Widget test of [MyoroSearchInputWidgetShowcase].
void main() {
  testWidgets('MyoroSearchInputWidgetShowcase', (WidgetTester tester) async {
    await tester.pumpWidget(const StoryboardWidgetTester(child: MyoroSearchInputWidgetShowcase()));
    await tester.pumpAndSettle();

    expect(find.byType(MyoroSearchInputWidgetShowcase), findsOneWidget);
    expect(find.byType(WidgetShowcase), findsOneWidget);
    expect(find.byType(MyoroSearchInput<String>), findsOneWidget);
    expect(
      find.byWidgetPredicate(
        (Widget w) =>
            w is MyoroCheckbox && w.configuration.label == '[MyoroSearchInput.requestWhenChanged]',
      ),
      findsOneWidget,
    );
  });
}
