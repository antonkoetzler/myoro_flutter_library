import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Widget test of [MyoroCard].
void main() {
  late final MyoroCardConfiguration configuration;

  setUp(() {
    MyoroTypographyDesignSystem.isDarkMode = faker.randomGenerator.boolean();
    configuration = MyoroCardConfiguration.fake();
  });

  testWidgets('MyoroCard', (WidgetTester tester) async {
    late final MyoroCardThemeExtension themeExtension;

    await tester.pumpWidget(
      MyoroWidgetTester(
        child: Builder(
          builder: (BuildContext context) {
            themeExtension = context.resolveThemeExtension<MyoroCardThemeExtension>();

            return MyoroCard(configuration: configuration);
          },
        ),
      ),
    );
    await tester.pumpAndSettle();

    expect(find.byType(MyoroCard), findsOneWidget);

    // Wrapper.
    expect(
      find.byWidgetPredicate(
        (Widget w) =>
            w is Column && w.mainAxisSize == MainAxisSize.min && w.children.last is Flexible,
      ),
      findsOneWidget,
    );

    // [_Title].
    if (configuration.title.isNotEmpty) {
      expect(
        find.byWidgetPredicate(
          (Widget w) =>
              w is Text &&
              w.data == configuration.title &&
              w.style == (configuration.titleTextStyle ?? themeExtension.textStyle),
        ),
        findsOneWidget,
      );
    }

    // [_Card].
    expect(
      find.byWidgetPredicate(
        (Widget w) =>
            w is Container &&
            w.padding == (configuration.padding ?? themeExtension.padding) &&
            w.decoration ==
                BoxDecoration(
                  color: themeExtension.backgroundColor,
                  border: themeExtension.border,
                  borderRadius: themeExtension.borderRadius,
                ) &&
            w.child is SizedBox,
      ),
      findsOneWidget,
    );
  });
}
