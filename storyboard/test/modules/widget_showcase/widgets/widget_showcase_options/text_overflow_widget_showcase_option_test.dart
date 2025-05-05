import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

void main() {
  final WidgetShowcaseOptionLabelConfiguration? labelConfiguration =
      faker.randomGenerator.boolean() ? WidgetShowcaseOptionLabelConfiguration.fake() : null;
  final WidgetShowcaseOptionDropdownConfiguration<TextOverflow> dropdownConfiguration =
      WidgetShowcaseOptionDropdownConfiguration.fake();

  testWidgets('TextOverflowWidgetShowcaseOption', (WidgetTester tester) async {
    await tester.pumpWidget(
      StoryboardWidgetTester(
        child: TextOverflowWidgetShowcaseOption(
          labelConfiguration: labelConfiguration,
          dropdownConfiguration: dropdownConfiguration,
        ),
      ),
    );
    await tester.pumpAndSettle();

    expect(find.byType(TextOverflowWidgetShowcaseOption), findsOneWidget);
    expect(
      find.byWidgetPredicate(
        (Widget w) =>
            w is WidgetShowcaseOption &&
            w.labelConfiguration ==
                (labelConfiguration ??
                    const WidgetShowcaseOptionLabelConfiguration(label: 'TextOverflow')) &&
            w.child is MyoroSingularDropdown<TextOverflow>,
      ),
      findsOneWidget,
    );
  });
}
