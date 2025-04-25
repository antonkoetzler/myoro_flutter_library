import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// Widget test of [WidgetShowcase].
void main() {
  void expectDivider({required Axis direction, EdgeInsets? padding}) {
    expect(
      find.byWidgetPredicate(
        (Widget w) =>
            w is MyoroBasicDivider &&
            w.configuration ==
                MyoroBasicDividerConfiguration(direction: direction, padding: padding),
      ),
      findsAtLeastNWidgets(1),
    );
  }

  testWidgets('WidgetShowcase', (WidgetTester tester) async {
    final widgetOptions = List.generate(
      faker.randomGenerator.integer(100, min: 0),
      (_) => const SizedBox.shrink(),
    );
    late final WidgetShowcaseThemeExtension themeExtension;

    await tester.pumpWidget(
      StoryboardWidgetTester(
        child: Builder(
          builder: (BuildContext context) {
            themeExtension = context.resolveThemeExtension<WidgetShowcaseThemeExtension>();

            return WidgetShowcase(widget: const SizedBox.shrink(), widgetOptions: widgetOptions);
          },
        ),
      ),
    );
    await tester.pumpAndSettle();

    expect(find.byType(WidgetShowcase), findsOneWidget);

    // [_WidgetShowcaseState].
    expect(
      find.byWidgetPredicate(
        (Widget w) =>
            w is Row &&
            w.crossAxisAlignment == CrossAxisAlignment.start &&
            w.children.length == (widgetOptions.isNotEmpty ? 3 : 1) &&
            w.children.first is Expanded,
      ),
      findsOneWidget,
    );

    // [_Divider] in [WidgetShowcase].
    expectDivider(direction: Axis.vertical);

    // [_WidgetWrapper].
    expect(
      find.byWidgetPredicate(
        (Widget w) =>
            w is Padding &&
            w.padding == themeExtension.widgetWrapperPadding &&
            w.child is Stack &&
            (w.child as Stack).children.length == 2 &&
            (w.child as Stack).children.first is Container &&
            ((w.child as Stack).children.first as Container).constraints?.maxHeight ==
                double.infinity &&
            ((w.child as Stack).children.first as Container).alignment ==
                themeExtension.widgetWrapperAlignment &&
            ((w.child as Stack).children.first as Container).decoration ==
                themeExtension.widgetWrapperDecoration &&
            ((w.child as Stack).children.first as Container).child is Padding &&
            (((w.child as Stack).children.first as Container).child as Padding).padding ==
                themeExtension.widgetWrapperContentPadding &&
            (((w.child as Stack).children.first as Container).child as Padding).child is SizedBox,
      ),
      findsOneWidget,
    );

    // [_WidgetOptions].
    if (widgetOptions.isNotEmpty) {
      expect(
        find.byWidgetPredicate(
          (Widget w) =>
              w is ConstrainedBox &&
              w.constraints.maxWidth == themeExtension.widgetOptionsMaxWidth &&
              w.child is SingleChildScrollView &&
              (w.child as SingleChildScrollView).child is Padding &&
              ((w.child as SingleChildScrollView).child as Padding).padding ==
                  themeExtension.widgetOptionsPadding &&
              ((w.child as SingleChildScrollView).child as Padding).child is Column &&
              (((w.child as SingleChildScrollView).child as Padding).child as Column)
                      .children
                      .length ==
                  widgetOptions.length,
        ),
        findsOneWidget,
      );
    }

    // Item in [_WidgetOptions].
    expect(
      find.byWidgetPredicate(
        (Widget w) =>
            w is Column &&
            w.mainAxisSize == MainAxisSize.min &&
            w.children.length == (widgetOptions.isNotEmpty ? 2 : 1) &&
            w.children.first is Flexible,
      ),
      findsNWidgets(widgetOptions.length),
    );

    // [_Divider in [_WidgetOptions].
    expectDivider(direction: Axis.horizontal, padding: themeExtension.widgetOptionsDividerPadding);
  });
}
