import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

import '../../../test_exports.dart';

/// Widget test of [MyoroGroupRadio].
void main() {
  final Axis? direction = faker.randomGenerator.boolean() ? Axis.values[faker.randomGenerator.integer(Axis.values.length)] : null;
  final double? spacing = faker.randomGenerator.boolean() ? faker.randomGenerator.decimal() : null;
  final double? runSpacing = faker.randomGenerator.boolean() ? faker.randomGenerator.decimal() : null;
  final MyoroGroupRadioItems radios = {
    for (int i = 0; i < faker.randomGenerator.integer(100, min: 1); i++) '$i': i == 0,
  };

  testWidgets('MyoroGroupRadio', (WidgetTester tester) async {
    late final MyoroGroupRadioThemeExtension themeExtension;

    await tester.pumpWidget(
      MyoroWidgetTester(
        child: Builder(
          builder: (BuildContext context) {
            themeExtension = context.resolveThemeExtension<MyoroGroupRadioThemeExtension>();

            return MyoroGroupRadio(
              direction: direction,
              spacing: spacing,
              runSpacing: runSpacing,
              radios: radios,
            );
          },
        ),
      ),
    );
    await tester.pumpAndSettle();

    expect(find.byType(MyoroGroupRadio), findsOneWidget);
    expect(find.byType(ValueListenableBuilder<MyoroGroupRadioItems>), findsOneWidget);
    expect(
      find.byWidgetPredicate(
        (Widget w) =>
            w is Wrap &&
            w.direction == (direction ?? themeExtension.direction) &&
            w.spacing == (spacing ?? themeExtension.spacing) &&
            w.runSpacing == (runSpacing ?? themeExtension.runSpacing) &&
            w.children.length == radios.keys.length,
      ),
      findsOneWidget,
    );
  });
}
