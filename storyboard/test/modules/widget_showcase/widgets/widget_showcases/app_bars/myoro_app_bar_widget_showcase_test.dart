import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// Widget test of [MyoroAppBarWidgetShowcase].
void main() {
  testWidgets('MyoroAppBarWidgetShowcase', (WidgetTester tester) async {
    late final MyoroAppBarWidgetShowcaseThemeExtension themeExtension;

    await tester.pumpWidget(
      StoryboardWidgetTester(
        child: Builder(
          builder: (BuildContext context) {
            themeExtension =
                context.resolveThemeExtension<MyoroAppBarWidgetShowcaseThemeExtension>();

            return const MyoroAppBarWidgetShowcase();
          },
        ),
      ),
    );
    await tester.pumpAndSettle();

    expect(find.byType(MyoroAppBarWidgetShowcase), findsOneWidget);
    expect(find.byType(WidgetShowcase), findsOneWidget);

    // [_Widget].
    expect(
      find.byWidgetPredicate(
        (Widget w) =>
            w is MyoroAppBar &&
            w.configuration.child is SizedBox &&
            (w.configuration.child as SizedBox).width == double.infinity &&
            (w.configuration.child as SizedBox).child is Wrap &&
            ((w.configuration.child as SizedBox).child as Wrap).alignment ==
                WrapAlignment.spaceBetween &&
            ((w.configuration.child as SizedBox).child as Wrap).children.length == 2 &&
            ((w.configuration.child as SizedBox).child as Wrap).children.first is Row &&
            (((w.configuration.child as SizedBox).child as Wrap).children.first as Row)
                    .mainAxisSize ==
                MainAxisSize.min &&
            (((w.configuration.child as SizedBox).child as Wrap).children.first as Row)
                    .children
                    .length ==
                3 &&
            (((w.configuration.child as SizedBox).child as Wrap).children.first as Row).children[1]
                is SizedBox &&
            ((((w.configuration.child as SizedBox).child as Wrap).children.first as Row).children[1]
                        as SizedBox)
                    .width ==
                themeExtension.logoTitleSpacing,
      ),
      findsOneWidget,
    );

    // [_MockAppLogo].
    expect(
      find.byWidgetPredicate(
        (Widget w) => w is Icon && w.icon == themeExtension.mockAppLogoIcon && w.size == 30,
      ),
      findsOneWidget,
    );

    // [_MockAppTitle].
    expect(
      find.byWidgetPredicate(
        (Widget w) =>
            w is Text &&
            w.data == 'Hello, World!' &&
            w.style == themeExtension.mockAppTitleTextStyle,
      ),
      findsOneWidget,
    );

    // [_MockMenuButton].
    expect(
      find.byWidgetPredicate(
        (Widget w) =>
            w is IntrinsicWidth &&
            w.child is MyoroIconTextButton &&
            (w.child as MyoroIconTextButton).configuration.iconConfiguration?.icon ==
                themeExtension.mockMenuButtonIcon &&
            (w.child as MyoroIconTextButton).configuration.buttonConfiguration?.onTapUp != null,
      ),
      findsOneWidget,
    );

    // [_Bordered].
    expect(
      find.byWidgetPredicate(
        (Widget w) =>
            w is MyoroCheckbox &&
            w.configuration.label == '[MyoroAppBar.bordered]' &&
            w.configuration.onChanged != null,
      ),
      findsOneWidget,
    );
  });
}
