import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// Widget test of [MyoroHoverButtonWidgetShowcase].
void main() {
  void expectColorDropdown({required String label}) {
    expect(
      find.byWidgetPredicate(
        (Widget w) =>
            w is MyoroSingularDropdown<Color> && w.configuration.label == label,
      ),
      findsOneWidget,
    );
  }

  void expectCheckbox({required String label}) {
    expect(
      find.byWidgetPredicate(
        (Widget w) => w is MyoroCheckbox && w.label == label,
      ),
      findsOneWidget,
    );
  }

  testWidgets('MyoroHoverButtonWidgetShowcase', (WidgetTester tester) async {
    late final MyoroHoverButtonWidgetShowcaseThemeExtension themeExtension;

    await tester.pumpWidget(
      BlocProvider(
        create: (_) => WidgetShowcaseBloc(),
        child: MyoroWidgetTester(
          themeExtensionsBuilder: createThemeExtensions,
          child: Builder(
            builder: (BuildContext context) {
              themeExtension =
                  context
                      .resolveThemeExtension<
                        MyoroHoverButtonWidgetShowcaseThemeExtension
                      >();
              return const MyoroHoverButtonWidgetShowcase();
            },
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();

    expect(find.byType(MyoroHoverButtonWidgetShowcase), findsOneWidget);
    expect(find.byType(WidgetShowcase), findsOneWidget);

    // [_Widget].
    expect(find.byType(MyoroHoverButton), findsOneWidget);

    // Content within [MyoroHoverButton] in [_Widget].
    expect(
      find.byWidgetPredicate(
        (Widget w) =>
            w is Padding &&
            w.padding == themeExtension.widgetContentPadding &&
            w.child is Text &&
            (w.child as Text).data == 'Click me!',
      ),
      findsOneWidget,
    );

    // [_PrimaryColorDropdown].
    expectColorDropdown(label: 'Primary color');

    // [_OnPrimaryColorDropdown].
    expectColorDropdown(label: 'On primary color');

    // [_IsHoveredCheckbox].
    expectCheckbox(label: 'Is hovered?');

    // [_BorderedCheckbox].
    expectCheckbox(label: 'Bordered?');

    // [_BorderRadiusSlider].
    expect(
      find.byWidgetPredicate(
        (Widget w) =>
            w is Column &&
            w.mainAxisSize == MainAxisSize.min &&
            w.children.first is MyoroSlider &&
            (w.children.first as MyoroSlider).label == 'Border radius',
      ),
      findsOneWidget,
    );

    // [_TooltipEnabledCheckbox].
    expectCheckbox(label: 'Tooltip');

    // [_OnPressedEnabledCheckbox].
    expectCheckbox(label: 'onPressed enabled?');
  });
}
