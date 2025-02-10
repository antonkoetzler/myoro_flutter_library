import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// Widget test of [MyoroRadioWidgetShowcase].
void main() {
  testWidgets('MyoroRadioWidgetShowcase', (WidgetTester tester) async {
    await tester.pumpWidget(
      MyoroWidgetTester(
        themeExtensionsBuilder: createStoryboardThemeExtensions,
        child: BlocProvider(
          create: (_) => WidgetShowcaseBloc(),
          child: const MyoroRadioWidgetShowcase(),
        ),
      ),
    );
    await tester.pumpAndSettle();

    expect(find.byType(MyoroRadioWidgetShowcase), findsOneWidget);
    expect(find.byType(WidgetShowcase), findsOneWidget);
    expect(find.byType(MyoroRadio), findsOneWidget);
    expect(MyoroInput.finder(label: '[MyoroRadio.label]', labelEnabled: true), findsOneWidget);
    expect(
      MyoroSingularDropdown.finder<TextStyle>(
        label: '[MyoroRadio.labelTextStyle]',
        labelEnabled: true,
      ),
      findsOneWidget,
    );
  });
}
