import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// Widget test of [MyoroSliderWidgetShowcase].
void main() {
  testWidgets('MyoroSliderWidgetShowcase', (WidgetTester tester) async {
    await tester.pumpWidget(
      MyoroWidgetTester(
        themeExtensionsBuilder: createStoryboardThemeExtensions,
        child: BlocProvider(
          create: (_) => WidgetShowcaseBloc(),
          child: const MyoroSliderWidgetShowcase(),
        ),
      ),
    );
    await tester.pumpAndSettle();

    expect(find.byType(MyoroSliderWidgetShowcase), findsOneWidget);
    expect(find.byType(WidgetShowcase), findsOneWidget);
    expect(find.byType(MyoroSlider), findsNWidgets(2));
    expect(
      MyoroInput.finder(label: '[MyoroSlider.label]', labelEnabled: true),
      findsOneWidget,
    );
    expect(
      MyoroSingularDropdown.finder<TextStyle>(
        label: '[MyoroSlider.labelTextStyle]',
        labelEnabled: true,
      ),
      findsOneWidget,
    );
    expect(
      MyoroSlider.finder(label: '[MyoroSlider.width]', labelEnabled: true),
      findsOneWidget,
    );
    expect(
      MyoroCheckbox.finder(label: 'Label on the left?', labelEnabled: true),
      findsOneWidget,
    );
    expect(
      MyoroCheckbox.finder(label: 'Label on the right?', labelEnabled: true),
      findsOneWidget,
    );
    expect(
      MyoroCheckbox.finder(label: 'Label on the bottom?', labelEnabled: true),
      findsOneWidget,
    );
  });
}
