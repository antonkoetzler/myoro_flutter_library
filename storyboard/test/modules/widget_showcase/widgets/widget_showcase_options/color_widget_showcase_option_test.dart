import 'package:faker/faker.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

void main() {
  final WidgetShowcaseOptionLabelConfiguration? labelConfiguration =
      faker.randomGenerator.boolean() ? WidgetShowcaseOptionLabelConfiguration.fake() : null;

  testWidgets('ColorWidgetShowcaseOption', (WidgetTester tester) async {
    await tester.pumpWidget(
      StoryboardWidgetTester(
        child: ColorWidgetShowcaseOption(labelConfiguration: labelConfiguration, onChanged: (_) {}),
      ),
    );
    await tester.pumpAndSettle();

    expect(find.byType(ColorWidgetShowcaseOption), findsOneWidget);
    expect(
      find.byWidgetPredicate(
        (Widget w) =>
            w is WidgetShowcaseOption &&
            w.labelConfiguration ==
                (labelConfiguration ??
                    const WidgetShowcaseOptionLabelConfiguration(label: 'Color')) &&
            w.child is MyoroSingularDropdown<Color>,
      ),
      findsOneWidget,
    );

    await tester.tap(find.byType(MyoroSingularDropdown<Color>));
    await tester.pumpAndSettle();
  });
}
