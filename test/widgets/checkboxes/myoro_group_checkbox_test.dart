import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Widget test of [MyoroGroupCheckbox].
void main() {
  final Axis? direction =
      faker.randomGenerator.boolean()
          ? Axis.values[faker.randomGenerator.integer(Axis.values.length)]
          : null;
  final double? spacing = faker.randomGenerator.boolean() ? faker.randomGenerator.decimal() : null;
  final double? runSpacing =
      faker.randomGenerator.boolean() ? faker.randomGenerator.decimal() : null;
  final MyoroGroupCheckboxItems checkboxes = {
    for (int i = 0; i < faker.randomGenerator.integer(100, min: 1); i++)
      '$i': faker.randomGenerator.boolean(),
  };

  testWidgets('MyoroGroupCheckbox', (WidgetTester tester) async {
    late final MyoroGroupCheckboxThemeExtension themeExtension;

    await tester.pumpWidget(
      MyoroWidgetTester(
        child: Builder(
          builder: (BuildContext context) {
            themeExtension = context.resolveThemeExtension<MyoroGroupCheckboxThemeExtension>();

            return MyoroGroupCheckbox(
              direction: direction,
              spacing: spacing,
              runSpacing: runSpacing,
              checkboxes: checkboxes,
            );
          },
        ),
      ),
    );
    await tester.pumpAndSettle();

    expect(find.byType(MyoroGroupCheckbox), findsOneWidget);

    // Wrapper
    expect(find.byType(ValueListenableBuilder<MyoroGroupCheckboxItems>), findsOneWidget);
    expect(
      find.byWidgetPredicate(
        (Widget w) =>
            w is Wrap &&
            w.direction == (direction ?? themeExtension.direction) &&
            w.spacing == (spacing ?? themeExtension.spacing) &&
            w.runSpacing == (runSpacing ?? themeExtension.runSpacing) &&
            w.children.length == checkboxes.keys.length,
      ),
      findsOneWidget,
    );
    expect(find.byType(MyoroCheckbox), findsNWidgets(checkboxes.length));
  });
}
