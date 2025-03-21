import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// Widget test of [MyoroGroupRadioWidgetShowcase].
void main() {
  testWidgets('MyoroGroupRadioWidgetShowcase', (WidgetTester tester) async {
    await tester.pumpWidget(
      MyoroWidgetTester(
        themeExtensionsBuilder: createThemeExtensions,
        child: BlocProvider(
          create: (_) => WidgetShowcaseBloc(),
          child: const MyoroGroupRadioWidgetShowcase(),
        ),
      ),
    );
    await tester.pumpAndSettle();

    expect(find.byType(MyoroGroupRadioWidgetShowcase), findsOneWidget);
    expect(find.byType(WidgetShowcase), findsOneWidget);
    expect(find.byType(MyoroGroupRadio), findsOneWidget);
    expect(
      MyoroSingularDropdown.finder<Axis>(
        label: '[MyoroGroupRadio.direction]',
        labelEnabled: true,
      ),
      findsOneWidget,
    );
    expect(
      MyoroSlider.finder(
        label: '[MyoroGroupRadio.spacing]',
        labelEnabled: true,
      ),
      findsOneWidget,
    );
    expect(
      MyoroSlider.finder(
        label: '[MyoroGroupRadio.runSpacing]',
        labelEnabled: true,
      ),
      findsOneWidget,
    );
  });
}
