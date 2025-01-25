import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// Widget test of [MyoroScrollableWidgetShowcase].
void main() {
  testWidgets('MyoroScrollableWidgetShowcase', (WidgetTester tester) async {
    await tester.pumpWidget(
      MyoroWidgetTester(
        themeExtensionsBuilder: createStoryboardThemeExtensions,
        child: BlocProvider(
          create: (_) => WidgetShowcaseBloc(),
          child: const MyoroScrollableWidgetShowcase(),
        ),
      ),
    );
    await tester.pumpAndSettle();

    expect(find.byType(MyoroScrollableWidgetShowcase), findsOneWidget);
    expect(find.byType(WidgetShowcase), findsOneWidget);
    expect(find.byType(MyoroScrollable), findsAtLeastNWidgets(1));
    expect(
      MyoroSingularDropdown.finder<MyoroScrollableEnum>(
        label: '[MyoroScrollable.scrollableType]',
        labelEnabled: true,
      ),
      findsOneWidget,
    );
    expect(
      MyoroSingularDropdown.finder<Axis>(
        label: '[MyoroScrollable.direction]',
        labelEnabled: true,
      ),
      findsOneWidget,
    );
    expect(
      MyoroSlider.finder(label: '[MyoroScrollable.padding]', labelEnabled: true),
      findsOneWidget,
    );
  });
}
