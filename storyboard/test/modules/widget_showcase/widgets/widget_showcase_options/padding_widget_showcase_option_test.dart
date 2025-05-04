import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

void main() {
  final configuration = PaddingWidgetShowcaseOptionConfiguration.fake();

  testWidgets(
    'PaddingWidgetShowcaseOption with PaddingWidgetShowcaseOptionAllConfiguration',
    (WidgetTester tester) async {
      late final PaddingWidgetShowcaseOptionThemeExtension themeExtension;

      await tester.pumpWidget(
        StoryboardWidgetTester(
          child: Builder(
            builder: (BuildContext context) {
              themeExtension =
                  context
                      .resolveThemeExtension<
                        PaddingWidgetShowcaseOptionThemeExtension
                      >();
              return PaddingWidgetShowcaseOption(configuration: configuration);
            },
          ),
        ),
      );
      await tester.pumpAndSettle();

      expect(find.byType(PaddingWidgetShowcaseOption), findsOneWidget);
      expect(
        find.byWidgetPredicate(
          (Widget w) =>
              w is WidgetShowcaseOption &&
              w.labelConfiguration ==
                  (configuration.labelConfiguration ??
                      const WidgetShowcaseOptionLabelConfiguration(
                        label: 'Padding',
                      )) &&
              w.child is Column &&
              (w.child as Column).mainAxisSize == MainAxisSize.min &&
              (w.child as Column).spacing == themeExtension.spacing,
        ),
        findsOneWidget,
      );
    },
  );
}
