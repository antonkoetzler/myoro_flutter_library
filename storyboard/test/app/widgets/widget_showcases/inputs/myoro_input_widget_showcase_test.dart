import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// Widget test of [MyoroInputWidgetShowcase].
void main() {
  testWidgets('MyoroInputWidgetShowcase', (WidgetTester tester) async {
    await tester.pumpWidget(
      MyoroWidgetTester(
        themeExtensionsBuilder: createStoryboardThemeExtensions,
        child: BlocProvider(
          create: (_) => WidgetShowcaseBloc(),
          child: const MyoroInputWidgetShowcase(),
        ),
      ),
    );
    await tester.pumpAndSettle();

    expect(find.byType(MyoroInputWidgetShowcase), findsOneWidget);
    expect(find.byType(WidgetShowcase), findsOneWidget);
    expect(find.byType(MyoroInput), findsAtLeastNWidgets(1));
    expect(
      MyoroSingularDropdown.finder<MyoroInputWidgetShowcaseEnum>(
        label: 'Formatter (named constructors):',
        labelEnabled: true,
      ),
      findsOneWidget,
    );
    expect(
      MyoroSingularDropdown.finder<MyoroInputStyleEnum>(
        label: '[inputStyle]',
        labelEnabled: true,
      ),
      findsOneWidget,
    );
    expect(
      MyoroSingularDropdown.finder<TextAlign>(
        label: '[textAlign]',
        labelEnabled: true,
      ),
      findsOneWidget,
    );
    expect(
      MyoroSingularDropdown.finder<TextStyle>(
        label: '[inputTextStyle]',
        labelEnabled: true,
      ),
      findsOneWidget,
    );
    expect(
      MyoroInput.finder(label: '[label]', labelEnabled: true),
      findsOneWidget,
    );
    expect(
      MyoroInput.finder(label: '[placeholder]', labelEnabled: true),
      findsOneWidget,
    );
    expect(
      MyoroSingularDropdown.finder<TextStyle>(
        label: '[labelTextStyle]',
        labelEnabled: true,
      ),
      findsOneWidget,
    );
    expect(
      MyoroCheckbox.finder(label: '[suffix] enabled?', labelEnabled: true),
      findsOneWidget,
    );
    expect(
      MyoroCheckbox.finder(label: '[enabled]', labelEnabled: true),
      findsOneWidget,
    );
    expect(
      MyoroCheckbox.finder(label: '[readOnly]', labelEnabled: true),
      findsOneWidget,
    );
    expect(
      MyoroCheckbox.finder(label: '[showClearTextButton]', labelEnabled: true),
      findsOneWidget,
    );
    expect(
      MyoroCheckbox.finder(
        label: '[checkboxOnChanged] not null?',
        labelEnabled: true,
      ),
      findsOneWidget,
    );
  });
}
