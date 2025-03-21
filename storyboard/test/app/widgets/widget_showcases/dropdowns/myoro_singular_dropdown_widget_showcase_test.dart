import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// Widget test of [MyoroSingularDropdownWidgetShowcase].
void main() {
  testWidgets('MyoroSingularDropdownWidgetShowcase', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(
      MyoroWidgetTester(
        themeExtensionsBuilder: createThemeExtensions,
        child: BlocProvider(
          create: (_) => WidgetShowcaseBloc(),
          child: const MyoroSingularDropdownWidgetShowcase(),
        ),
      ),
    );
    await tester.pumpAndSettle();

    expect(find.byType(MyoroSingularDropdownWidgetShowcase), findsOneWidget);
    expect(find.byType(WidgetShowcase), findsOneWidget);
    expect(find.byType(MyoroSingularDropdown<String>), findsOneWidget);
    expect(
      MyoroInput.finder(label: 'Label', labelEnabled: true),
      findsOneWidget,
    );
    expect(
      MyoroSingularDropdown.finder<TextStyle>(
        label: 'Label text style',
        labelEnabled: true,
      ),
      findsOneWidget,
    );
    expect(
      MyoroCheckbox.finder(label: 'Enabled', labelEnabled: true),
      findsOneWidget,
    );
    expect(
      MyoroCheckbox.finder(label: 'Allow item clearing?', labelEnabled: true),
      findsOneWidget,
    );
    expect(
      MyoroInput.finder(label: 'Menu\'s max height', labelEnabled: true),
      findsOneWidget,
    );
    expect(
      MyoroCheckbox.finder(label: 'Searching enabled?', labelEnabled: true),
      findsOneWidget,
    );
  });
}
