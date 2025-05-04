import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

void main() {
  final WidgetShowcaseOptionLabelConfiguration? labelConfiguration =
      faker.randomGenerator.boolean()
          ? WidgetShowcaseOptionLabelConfiguration.fake()
          : null;

  testWidgets('MouseCursorWidgetShowcaseOption', (WidgetTester tester) async {
    bool onChangedExecuted = true;

    await tester.pumpWidget(
      MyoroWidgetTester(
        child: MouseCursorWidgetShowcaseOption(
          labelConfiguration: labelConfiguration,
          onChanged: (_) => onChangedExecuted = true,
        ),
      ),
    );
    await tester.pumpAndSettle();

    expect(find.byType(MouseCursorWidgetShowcaseOption), findsOneWidget);
    expect(
      find.byWidgetPredicate(
        (Widget w) =>
            w is WidgetShowcaseOption &&
            w.labelConfiguration ==
                (labelConfiguration ??
                    const WidgetShowcaseOptionLabelConfiguration(
                      label: 'Mouse cursor',
                    )) &&
            w.child is MyoroSingularDropdown<SystemMouseCursor>,
      ),
      findsOneWidget,
    );

    await tester.tap(find.byType(MyoroSingularDropdown<SystemMouseCursor>));
    await tester.pumpAndSettle();

    expect(onChangedExecuted, isTrue);
  });
}
