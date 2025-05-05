import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

void main() {
  final WidgetShowcaseOptionLabelConfiguration? labelConfiguration =
      faker.randomGenerator.boolean() ? WidgetShowcaseOptionLabelConfiguration.fake() : null;

  testWidgets('IconWidgetShowcaseOption', (WidgetTester tester) async {
    await tester.pumpWidget(
      StoryboardWidgetTester(
        child: IconWidgetShowcaseOption(labelConfiguration: labelConfiguration, onChanged: (_) {}),
      ),
    );
    await tester.pumpAndSettle();

    expect(find.byType(IconWidgetShowcaseOption), findsOneWidget);
    expect(
      find.byWidgetPredicate(
        (Widget w) =>
            w is WidgetShowcaseOption &&
            w.labelConfiguration ==
                (labelConfiguration ??
                    const WidgetShowcaseOptionLabelConfiguration(label: 'Icon')) &&
            w.child is MyoroSingularDropdown<IconData>,
      ),
      findsOneWidget,
    );

    await tester.tap(find.byType(MyoroSingularDropdown<IconData>));
    await tester.pumpAndSettle();
  });
}
