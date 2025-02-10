import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Widget test of [MyoroCircularLoader].
void main() {
  final Color? color = faker.randomGenerator.boolean() ? kMyoroTestColors[faker.randomGenerator.integer(kMyoroTestColors.length)] : null;
  final double? size = faker.randomGenerator.boolean() ? faker.randomGenerator.decimal() : null;

  testWidgets('MyoroCircularLoader', (WidgetTester tester) async {
    late final MyoroCircularLoaderThemeExtension themeExtension;
    late final double chosenSize;

    await tester.pumpWidget(
      MyoroWidgetTester(
        child: Builder(
          builder: (BuildContext context) {
            themeExtension = context.resolveThemeExtension<MyoroCircularLoaderThemeExtension>();
            chosenSize = size ?? themeExtension.size;

            return MyoroCircularLoader(
              color: color,
              size: size,
            );
          },
        ),
      ),
    );
    // await tester.pumpAndSettle();

    expect(find.byType(MyoroCircularLoader), findsOneWidget);
    expect(
      find.byWidgetPredicate(
        (Widget w) =>
            w is SizedBox &&
            w.width == chosenSize &&
            w.height == chosenSize &&
            w.child is CircularProgressIndicator &&
            (w.child as CircularProgressIndicator).color == (color ?? themeExtension.color),
      ),
      findsOneWidget,
    );
  });
}
