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
        themeExtensionsBuilder: createStoryboardThemeExtensions,
        child: BlocProvider(
          create: (_) => WidgetShowcaseBloc(),
          child: const MyoroCarouselWidgetShowcase(),
        ),
      ),
    );
    await tester.pumpAndSettle();

    expect(find.byType(MyoroCarouselWidgetShowcase), findsOneWidget);
    expect(find.byType(WidgetShowcase), findsOneWidget);
    expect(find.byType(MyoroCarousel), findsOneWidget);

    // [_DirectionOption].
    expect(
      MyoroSingularDropdown.finder<Axis>(
        label: '[MyoroCarousel.direction]',
        labelEnabled: true,
        allowItemClearing: false,
        allowItemClearingEnabled: true,
      ),
      findsOneWidget,
    );

    // [_DisplayTraversalButtonsOptions].
    expect(
      MyoroCheckbox.finder(
        label: '[MyoroCarousel.displayTraversalButtons]',
        labelEnabled: true,
      ),
      findsOneWidget,
    );

    // [_AutoplayOption].
    expect(
      MyoroCheckbox.finder(
        label: '[MyoroCarousel.autoplay]',
        labelEnabled: true,
      ),
      findsOneWidget,
    );

    // [_AutoplayIntervalDurationOption].
    expect(
      MyoroSlider.finder(
        label: '[MyoroSlider.autoplayIntervalDuration]',
        labelEnabled: true,
      ),
      findsOneWidget,
    );
  });
}
