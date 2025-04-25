import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// Widget test of [MyoroInputWidgetShowcase].
void main() {
  testWidgets('MyoroInputWidgetShowcase', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MyoroWidgetTester(
        themeExtensionsBuilder: createStoryboardCommonsThemeExtensions,
        child: MyoroInputWidgetShowcase(),
      ),
    );
    await tester.pumpAndSettle();

    expect(find.byType(MyoroInputWidgetShowcase), findsOneWidget);
    expect(find.byType(WidgetShowcase), findsOneWidget);
    expect(find.byType(MyoroInput), findsAtLeastNWidgets(1));
    expect(
      find.byWidgetPredicate(
        (Widget w) =>
            w is MyoroSingularDropdown<MyoroInputWidgetShowcaseEnum> &&
            w.configuration.label == 'Formatter (named constructors):',
      ),
      findsOneWidget,
    );
    expect(
      find.byWidgetPredicate(
        (Widget w) =>
            w is MyoroSingularDropdown<MyoroInputStyleEnum> &&
            w.configuration.label == '[inputStyle]',
      ),
      findsOneWidget,
    );
    expect(
      find.byWidgetPredicate(
        (Widget w) =>
            w is MyoroSingularDropdown<TextAlign> && w.configuration.label == '[textAlign]',
      ),
      findsOneWidget,
    );
    expect(
      find.byWidgetPredicate(
        (Widget w) =>
            w is MyoroSingularDropdown<TextStyle> && w.configuration.label == '[inputTextStyle]',
      ),
      findsOneWidget,
    );
    expect(
      find.byWidgetPredicate((Widget w) => w is MyoroInput && w.configuration.label == '[label]'),
      findsOneWidget,
    );
    expect(
      find.byWidgetPredicate(
        (Widget w) => w is MyoroInput && w.configuration.label == '[placeholder]',
      ),
      findsOneWidget,
    );
    expect(
      find.byWidgetPredicate(
        (Widget w) =>
            w is MyoroSingularDropdown<TextStyle> && w.configuration.label == '[labelTextStyle]',
      ),
      findsOneWidget,
    );
    expect(
      find.byWidgetPredicate((Widget w) => w is MyoroCheckbox && w.label == '[suffix] enabled?'),
      findsOneWidget,
    );
    expect(
      find.byWidgetPredicate((Widget w) => w is MyoroCheckbox && w.label == '[enabled]'),
      findsOneWidget,
    );
    expect(
      find.byWidgetPredicate((Widget w) => w is MyoroCheckbox && w.label == '[readOnly]'),
      findsOneWidget,
    );
    expect(
      find.byWidgetPredicate(
        (Widget w) => w is MyoroCheckbox && w.label == '[showClearTextButton]',
      ),
      findsOneWidget,
    );
    expect(
      find.byWidgetPredicate(
        (Widget w) => w is MyoroCheckbox && w.label == '[checkboxOnChanged] not null?',
      ),
      findsOneWidget,
    );
  });
}
