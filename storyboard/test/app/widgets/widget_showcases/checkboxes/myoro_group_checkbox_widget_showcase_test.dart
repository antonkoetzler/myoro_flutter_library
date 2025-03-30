import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// Widget test of [MyoroGroupCheckboxWidgetShowcase].
void main() {
  testWidgets('MyoroGroupCheckboxWidgetShowcase', (WidgetTester tester) async {
    await tester.pumpWidget(
      MyoroWidgetTester(
        themeExtensionsBuilder: createThemeExtensions,
        child: BlocProvider(
          create: (_) => WidgetShowcaseBloc(),
          child: const MyoroGroupCheckboxWidgetShowcase(),
        ),
      ),
    );
    await tester.pumpAndSettle();

    expect(find.byType(MyoroGroupCheckboxWidgetShowcase), findsOneWidget);
    expect(find.byType(WidgetShowcase), findsOneWidget);
    expect(find.byType(MyoroGroupCheckbox), findsOneWidget);
    expect(
      find.byWidgetPredicate(
        (Widget w) =>
            w is MyoroSingularDropdown<Axis> &&
            w.configuration.label == '[MyoroGrupoCheckbox.direction]',
      ),
      findsOneWidget,
    );
    expect(
      MyoroInput.finder(
        label: '[MyoroGroupCheckbox.spacing]',
        labelEnabled: true,
      ),
      findsOneWidget,
    );
    expect(
      MyoroInput.finder(
        label: '[MyoroGroupCheckbox.runSpacing]',
        labelEnabled: true,
      ),
      findsOneWidget,
    );
  });
}
