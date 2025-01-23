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
        themeExtensionsBuilder: createStoryboardThemeExtensions,
        child: BlocProvider(
          create: (_) => WidgetShowcaseBloc(),
          child: const MyoroCardWidgetShowcase(),
        ),
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
    expect(myoroInputFinder(label: '[MyoroCard.title]'), findsOneWidget);

    // [_TitleTextStyleOption].
    expect(myoroSingularDropdownFinder(label: '[MyoroCard.titleTextStyle]'), findsOneWidget);

    // [_PaddingOption].
    expect(myoroSliderFinder(label: '[MyoroCard.padding]', maxValue: 50), findsOneWidget);

    // [_WidthOption].
    expect(myoroInputFinder(label: '[MyoroCard.width]'), findsOneWidget);

    // [_HeightOption].
    expect(myoroInputFinder(label: '[MyoroCard.height]'), findsOneWidget);
  });
}
