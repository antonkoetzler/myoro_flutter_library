import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// Widget test of [MyoroResizeDividerWidgetShowcase].
void main() {
  testWidgets('MyoroResizeDividerWidgetShowcase', (WidgetTester tester) async {
    await tester.pumpWidget(
      MyoroWidgetTester(
        themeExtensionsBuilder: createThemeExtensions,
        child: BlocProvider(
          create: (_) => WidgetShowcaseBloc(),
          child: const MyoroResizeDividerWidgetShowcase(),
        ),
      ),
    );
    await tester.pumpAndSettle();

    expect(find.byType(MyoroResizeDividerWidgetShowcase), findsOneWidget);
    expect(find.byType(WidgetShowcase), findsOneWidget);
    expect(find.byType(MyoroResizeDivider), findsOneWidget);
    expect(
      MyoroSingularDropdown.finder<Axis>(
        label: '[MyoroResizeDivider.direction]',
        labelEnabled: true,
      ),
      findsOneWidget,
    );
    expect(
      MyoroSlider.finder(
        label: '[MyoroResizeDivider.shortValue]',
        labelEnabled: true,
      ),
      findsOneWidget,
    );
    expect(
      MyoroSlider.finder(label: 'Vertical padding', labelEnabled: true),
      findsOneWidget,
    );
    expect(
      MyoroSlider.finder(label: 'Horizontal padding', labelEnabled: true),
      findsOneWidget,
    );
  });
}
