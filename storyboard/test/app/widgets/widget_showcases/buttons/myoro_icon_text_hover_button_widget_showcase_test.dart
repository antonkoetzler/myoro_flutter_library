import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// Widget test of [MyoroIconTextHoverButtonWidgetShowcase].
void main() {
  void expectDropdown<T>(String label) {
    expect(
      find.byWidgetPredicate(
        (Widget w) =>
            w is MyoroSingularDropdown<T> && w.configuration.label == label,
      ),
      findsOneWidget,
    );
  }

  void expectInput(String label) {
    expect(
      find.byWidgetPredicate(
        (Widget w) => w is MyoroInput && w.configuration.label == label,
      ),
      findsOneWidget,
    );
  }

  testWidgets('MyoroIconTextHoverButtonWidgetShowcase', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(
      MyoroWidgetTester(
        themeExtensionsBuilder: createThemeExtensions,
        child: BlocProvider(
          create: (_) => WidgetShowcaseBloc(),
          child: const MyoroIconTextHoverButtonWidgetShowcase(),
        ),
      ),
    );
    await tester.pumpAndSettle();

    expect(find.byType(MyoroIconTextHoverButtonWidgetShowcase), findsOneWidget);
    expect(find.byType(WidgetShowcase), findsOneWidget);
    expect(find.byType(MyoroIconTextHoverButton), findsAtLeastNWidgets(1));

    // [_IconOption].
    expectDropdown<IconData>('[MyoroIconTextHoverButton.icon]');

    // [_IconSizeOption].
    expectInput('[MyoroIconTextHoverButton.iconSize]');

    // [_TextOption].
    expectInput('[MyoroIconTextHoverButton.text]');

    // [_TextStyleOption].
    expectDropdown<TextStyle>('[MyoroIconTextHoverButton.textStyle]');

    // [_TextAlignOption].
    expectDropdown<TextAlign>('[MyoroIconTextHoverButton.textAlign]');

    // [_PaddingOption].
    expectInput('[MyoroIconTextHoverButton.padding]');

    // [_MainAxisAlignmentOption].
    expectDropdown<MainAxisAlignment>(
      '[MyoroIconTextHoverButton.mainAxisAlignment]',
    );

    // [_OnPressedEnabledOption].
    expect(
      find.byWidgetPredicate(
        (Widget w) =>
            w is MyoroCheckbox &&
            w.label == '[MyoroIconTextHoverButton.onPressed] enabled?',
      ),
      findsOneWidget,
    );
  });
}
