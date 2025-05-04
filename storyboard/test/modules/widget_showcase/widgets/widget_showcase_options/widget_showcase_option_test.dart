import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

void main() {
  final labelConfiguration = WidgetShowcaseOptionLabelConfiguration.fake();
  final Widget? child =
      faker.randomGenerator.boolean() ? Text(faker.lorem.word()) : null;

  testWidgets('WidgetShowcaseOption', (WidgetTester tester) async {
    late final WidgetShowcaseOptionThemeExtension themeExtension;

    await tester.pumpWidget(
      MyoroWidgetTester(
        child: Builder(
          builder: (BuildContext context) {
            themeExtension =
                context
                    .resolveThemeExtension<
                      WidgetShowcaseOptionThemeExtension
                    >();

            return WidgetShowcaseOption(
              labelConfiguration: labelConfiguration,
              child: child,
            );
          },
        ),
      ),
    );
    await tester.pumpAndSettle();

    expect(find.byType(WidgetShowcaseOption), findsOneWidget);
    expect(
      find.byWidgetPredicate(
        (Widget w) =>
            w is Column &&
            w.mainAxisSize == MainAxisSize.min &&
            w.spacing == themeExtension.spacing &&
            w.children.length == 2,
      ),
      findsOneWidget,
    );

    // [_Label]
    if (labelConfiguration.isNullable) {
      expect(
        find.widgetWithText(MyoroCheckbox, labelConfiguration.label),
        findsOneWidget,
      );
    } else {
      expect(find.text(labelConfiguration.label), findsOneWidget);
    }
  });
}
