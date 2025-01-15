import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

import '../../../test_exports.dart';

/// Widget test of [MyoroHoverButton].
void main() {
  final configurationNotifier = ValueNotifier(MyoroHoverButtonConfiguration.fake());

  bool getTooltipPredicateCondition(Widget w) {
    return w is MyoroTooltip && w.text == (configurationNotifier.value.tooltip ?? '');
  }

  Color getPrimaryColor(MyoroHoverButtonThemeExtension themeExtension) {
    return configurationNotifier.value.primaryColor ?? themeExtension.primaryColor;
  }

  Color getOnPrimaryColor(MyoroHoverButtonThemeExtension themeExtension) {
    return configurationNotifier.value.onPrimaryColor ?? themeExtension.onPrimaryColor;
  }

  tearDown(() => configurationNotifier.dispose());

  testWidgets('MyoroHoverButton', (WidgetTester tester) async {
    late final MyoroHoverButtonThemeExtension themeExtension;
    late bool builderIsHovered;
    late Color builderPrimaryColor;
    late Color builderOnPrimaryColor;
    bool onPressedExecuted = false;

    await tester.pumpWidget(
      MyoroWidgetTester(
        child: Builder(
          builder: (BuildContext context) {
            themeExtension = context.resolveThemeExtension<MyoroHoverButtonThemeExtension>();

            return ValueListenableBuilder(
              valueListenable: configurationNotifier,
              builder: (_, MyoroHoverButtonConfiguration configuration, __) {
                return MyoroHoverButton(
                  configuration: configuration,
                  onPressed: () => onPressedExecuted = true,
                  builder: (
                    bool isHovered,
                    Color primaryColor,
                    Color onPrimaryColor,
                  ) {
                    builderIsHovered = isHovered;
                    builderPrimaryColor = primaryColor;
                    builderOnPrimaryColor = onPrimaryColor;

                    return const SizedBox.shrink();
                  },
                );
              },
            );
          },
        ),
      ),
    );
    await tester.pumpAndSettle();

    // Asserting arguments provided in the builder.
    expect(builderIsHovered, false);
    expect(builderPrimaryColor, getPrimaryColor(themeExtension));
    expect(builderOnPrimaryColor, getOnPrimaryColor(themeExtension));

    // Tooltip should be disabled then enabled after [tooltipEnabledNotifier] is changed.
    expect(find.byWidgetPredicate(getTooltipPredicateCondition), findsOneWidget);
    configurationNotifier.value = configurationNotifier.value.copyWith(tooltip: 'Hello, World!');
    await tester.pump();
    expect(find.byWidgetPredicate(getTooltipPredicateCondition), findsOneWidget);

    // Wrapper
    expect(
      find.byWidgetPredicate(
        (Widget w) =>
            getTooltipPredicateCondition(w) &&
            (w as MyoroTooltip).child is InkWell &&
            (w.child as InkWell).focusColor == MyoroColorTheme.transparent &&
            (w.child as InkWell).hoverColor == MyoroColorTheme.transparent &&
            (w.child as InkWell).splashColor == MyoroColorTheme.transparent &&
            (w.child as InkWell).highlightColor == MyoroColorTheme.transparent &&
            (w.child as InkWell).onTap != null &&
            (w.child as InkWell).onHover != null &&
            (w.child as InkWell).child is ValueListenableBuilder,
      ),
      findsOneWidget,
    );

    // What is inside of the [ValueListenableBuilder] above: The styling/contents of the button.
    expect(
      find.byWidgetPredicate(
        (Widget w) =>
            w is Container &&
            w.decoration ==
                BoxDecoration(
                  border: (configurationNotifier.value.bordered ?? themeExtension.bordered)
                      ? Border.all(
                          width: 2,
                          color: getOnPrimaryColor(themeExtension),
                        )
                      : null,
                  borderRadius: configurationNotifier.value.borderRadius ?? themeExtension.borderRadius,
                  color: configurationNotifier.value.isHovered == true ? getOnPrimaryColor(themeExtension) : getPrimaryColor(themeExtension),
                ) &&
            w.child is SizedBox,
      ),
      findsOneWidget,
    );

    // Testing what happens when the button is pressed.
    await tester.tap(find.byType(MyoroHoverButton));
    await tester.pump();
    expect(onPressedExecuted, isTrue);
  });
}
