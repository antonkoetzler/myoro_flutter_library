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
    expectDropdown<IconData>('Icon');

    // [_IconSizeOption].
    expectInput('Icon size');

    // [_TextOption].
    expectInput('Text');

    // [_TextStyleOption].
    expectDropdown<TextStyle>('Text style');

    // [_TextAlignOption].
    expectDropdown<TextAlign>('Text alignment');

    // [_PaddingOption].
    expectInput('Padding');

    // [_MainAxisAlignmentOption].
    expectDropdown<MainAxisAlignment>('MainAxisAlignment');

    // [_OnPressedEnabledOption].
    expect(
      find.byWidgetPredicate(
        (Widget w) => w is MyoroCheckbox && w.label == 'onPressed enabled?',
      ),
      findsOneWidget,
    );
  });
}
