import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// Widget test of [MyoroDrawerWidgetShowcase].
void main() {
  testWidgets('MyoroDrawerWidgetShowcase', (WidgetTester tester) async {
    late final MyoroDrawerWidgetShowcaseThemeExtension themeExtension;

    await tester.pumpWidget(
      StoryboardWidgetTester(
        child: Builder(
          builder: (BuildContext context) {
            themeExtension =
                context.resolveThemeExtension<MyoroDrawerWidgetShowcaseThemeExtension>();
            return const MyoroDrawerWidgetShowcase();
          },
        ),
      ),
    );
    await tester.pumpAndSettle();

    expect(find.byType(MyoroDrawerWidgetShowcase), findsOneWidget);
    expect(find.byType(WidgetShowcase), findsOneWidget);

    // [_Widget].
    expect(
      find.byWidgetPredicate(
        (Widget w) =>
            w is IntrinsicWidth &&
            w.child is MyoroIconTextButton &&
            (w.child as MyoroIconTextButton).configuration.borderBuilder != null &&
            (w.child as MyoroIconTextButton).configuration.textConfiguration?.text ==
                'Click to launch the drawer.' &&
            (w.child as MyoroIconTextButton).configuration.onTapUp != null,
      ),
      findsOneWidget,
    );

    // [_TitleOption].
    expect(
      find.byWidgetPredicate(
        (Widget w) =>
            w is MyoroInput &&
            w.configuration.inputStyle == themeExtension.inputStyle &&
            w.configuration.label == '[MyoroDrawer.title]',
      ),
      findsOneWidget,
    );

    // [_TitleTextStyleOption].
    expect(
      find.byWidgetPredicate((Widget w) {
        return w is SizedBox && w.width == 210 && w.child is MyoroSingularDropdown<TextStyle>;
      }),
      findsOneWidget,
    );
    expect(
      find.byWidgetPredicate(
        (Widget w) =>
            w is MyoroSingularDropdown<TextStyle> &&
            w.configuration.label == '[MyoroDrawer.titleTextStyle]' &&
            !w.configuration.enabled,
      ),
      findsOneWidget,
    );

    // [_ShowCloseButtonOption].
    expect(find.widgetWithText(MyoroCheckbox, '[MyoroDrawer.showCloseButton]'), findsOneWidget);

    // [BarrierDismissableOption].
    expect(find.widgetWithText(MyoroCheckbox, '[MyoroDrawer.barrierDismissable]'), findsOneWidget);
  });
}
