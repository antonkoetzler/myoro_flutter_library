import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// Widget test of [MyoroDrawerWidgetShowcase].
void main() {
  testWidgets('MyoroDrawerWidgetShowcase', (WidgetTester tester) async {
    late final MyoroDrawerWidgetShowcaseThemeExtension themeExtension;

    await tester.pumpWidget(
      MyoroWidgetTester(
        themeExtensionsBuilder: createThemeExtensions,
        child: Builder(
          builder: (BuildContext context) {
            themeExtension =
                context
                    .resolveThemeExtension<
                      MyoroDrawerWidgetShowcaseThemeExtension
                    >();

            return BlocProvider(
              create: (_) => WidgetShowcaseBloc(),
              child: const MyoroDrawerWidgetShowcase(),
            );
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
            w.child is MyoroIconTextHoverButton &&
            (w.child as MyoroIconTextHoverButton).configuration?.bordered ==
                true &&
            (w.child as MyoroIconTextHoverButton).text ==
                'Click to launch the drawer.' &&
            (w.child as MyoroIconTextHoverButton).onPressed != null,
      ),
      findsOneWidget,
    );

    // [_TitleOption].
    expect(
      MyoroInput.finder(
        label: '[MyoroDrawer.title]',
        labelEnabled: true,
        inputStyle: themeExtension.inputStyle,
        inputStyleEnabled: true,
      ),
      findsOneWidget,
    );

    // [_TitleTextStyleOption].
    expect(
      find.byWidgetPredicate((Widget w) {
        return w is SizedBox &&
            w.width == 210 &&
            w.child is MyoroSingularDropdown<TextStyle>;
      }),
      findsOneWidget,
    );
    expect(
      MyoroSingularDropdown.finder<TextStyle>(
        label: '[MyoroDrawer.titleTextStyle]',
        labelEnabled: true,
        enabled: false,
        enabledEnabled: true,
      ),
      findsOneWidget,
    );

    // [_ShowCloseButtonOption].
    expect(
      MyoroCheckbox.finder(
        label: '[MyoroDrawer.showCloseButton]',
        labelEnabled: true,
      ),
      findsOneWidget,
    );

    // [BarrierDismissableOption].
    expect(
      MyoroCheckbox.finder(
        label: '[MyoroDrawer.barrierDismissable]',
        labelEnabled: true,
      ),
      findsOneWidget,
    );
  });
}
