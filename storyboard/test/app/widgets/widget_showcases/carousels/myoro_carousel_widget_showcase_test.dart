import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// Widget test of [MyoroCarouselWidgetShowcase].
void main() {
  testWidgets('MyoroCarouselWidgetShowcase', (WidgetTester tester) async {
    await tester.pumpWidget(
      MyoroWidgetTester(
        themeExtensionsBuilder: createThemeExtensions,
        child: BlocProvider(create: (_) => WidgetShowcaseBloc(), child: const MyoroCarouselWidgetShowcase()),
      ),
    );
    await tester.pumpAndSettle();

    expect(find.byType(MyoroCarouselWidgetShowcase), findsOneWidget);
    expect(find.byType(WidgetShowcase), findsOneWidget);
    expect(find.byType(MyoroCarousel), findsOneWidget);

    // [_DirectionOption].
    expect(
      find.byWidgetPredicate((Widget w) => w is MyoroSingularDropdown<Axis> && w.configuration.label == 'Direction' && !w.configuration.allowItemClearing),
      findsOneWidget,
    );

    // [_DisplayTraversalButtonsOptions].
    expect(find.widgetWithText(MyoroCheckbox, 'Display traversal buttons?'), findsOneWidget);

    // [_AutoplayOption].
    expect(find.widgetWithText(MyoroCheckbox, 'Autoplay'), findsOneWidget);

    // [_AutoplayIntervalDurationOption].
    expect(find.widgetWithText(MyoroSlider, 'Autoplay duration'), findsOneWidget);
  });
}
