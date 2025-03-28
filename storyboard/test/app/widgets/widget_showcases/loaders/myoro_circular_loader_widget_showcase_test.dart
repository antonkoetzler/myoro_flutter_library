import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// Widget test of [MyoroCircularLoaderWidgetShowcase].
void main() {
  testWidgets('MyoroCircularLoaderWidgetShowcase', (WidgetTester tester) async {
    await tester.pumpWidget(
      MyoroWidgetTester(
        themeExtensionsBuilder: createThemeExtensions,
        child: BlocProvider(
          create: (_) => WidgetShowcaseBloc(),
          child: const MyoroCircularLoaderWidgetShowcase(),
        ),
      ),
    );
    await tester.pump();

    expect(find.byType(MyoroCircularLoaderWidgetShowcase), findsOneWidget);
    expect(find.byType(WidgetShowcase), findsOneWidget);
    expect(find.byType(MyoroCircularLoader), findsOneWidget);
    expect(
      MyoroSingularDropdown.finder<Color>(label: 'Color', labelEnabled: true),
      findsOneWidget,
    );
    expect(
      MyoroSlider.finder(label: 'Size', labelEnabled: true),
      findsOneWidget,
    );
  });
}
