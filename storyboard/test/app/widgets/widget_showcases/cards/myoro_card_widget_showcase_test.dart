import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// Widget test of [MyoroCardWidgetShowcase].
void main() {
  testWidgets('MyoroCardWidgetShowcase', (WidgetTester tester) async {
    await tester.pumpWidget(
      MyoroWidgetTester(
        themeExtensionsBuilder: createThemeExtensions,
        child: BlocProvider(create: (_) => WidgetShowcaseBloc(), child: const MyoroCardWidgetShowcase()),
      ),
    );
    await tester.pumpAndSettle();

    expect(find.byType(MyoroCardWidgetShowcase), findsOneWidget);
    expect(find.byType(WidgetShowcase), findsOneWidget);

    // [_Widget].
    expect(
      find.byWidgetPredicate(
        (Widget w) =>
            w is IntrinsicHeight &&
            w.child is MyoroCard &&
            (w.child as MyoroCard).child is Text &&
            ((w.child as MyoroCard).child as Text).data == 'This is a [MyoroCard]!',
      ),
      findsOneWidget,
    );

    // [_TitleOption].
    expect(find.widgetWithText(MyoroInput, '[MyoroCard.title]'), findsOneWidget);

    // [_TitleTextStyleOption].
    expect(
      find.byWidgetPredicate((Widget w) => w is MyoroSingularDropdown<(String, TextStyle)> && w.configuration.label == '[MyoroCard.titleTextStyle]'),
      findsOneWidget,
    );

    // [_PaddingOption].
    expect(find.widgetWithText(MyoroSlider, '[MyoroCard.padding]'), findsOneWidget);

    // [_WidthOption].
    expect(find.widgetWithText(MyoroInput, '[MyoroCard.width]'), findsOneWidget);

    // [_HeightOption].
    expect(find.widgetWithText(MyoroInput, '[MyoroCard.height]'), findsOneWidget);
  });
}
