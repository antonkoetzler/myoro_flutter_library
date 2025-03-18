import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Widget test of [MyoroTooltip].
void main() {
  final EdgeInsets? margin =
      faker.randomGenerator.boolean()
          ? EdgeInsets.all(faker.randomGenerator.decimal())
          : null;
  final Duration? waitDuration =
      faker.randomGenerator.boolean() ? const Duration() : null;
  final String text = faker.randomGenerator.boolean() ? faker.lorem.word() : '';

  testWidgets('MyoroTooltip', (WidgetTester tester) async {
    late final MyoroTooltipThemeExtension themeExtension;

    await tester.pumpWidget(
      MyoroWidgetTester(
        child: Builder(
          builder: (BuildContext context) {
            themeExtension =
                context.resolveThemeExtension<MyoroTooltipThemeExtension>();

            return MyoroTooltip(
              waitDuration: waitDuration,
              margin: margin,
              text: text,
              child: const SizedBox.shrink(),
            );
          },
        ),
      ),
    );
    await tester.pumpAndSettle();

    expect(find.byType(MyoroTooltip), findsOneWidget);
    expect(
      find.byWidgetPredicate(
        (Widget w) =>
            w is Tooltip &&
            w.message == text &&
            w.waitDuration == (waitDuration ?? themeExtension.waitDuration) &&
            w.margin == margin &&
            w.child is SizedBox,
      ),
      findsOneWidget,
    );
  });
}
