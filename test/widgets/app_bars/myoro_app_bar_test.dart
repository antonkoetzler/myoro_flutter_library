import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Widget test of [MyoroAppBar].
void main() {
  final bool bordered = faker.randomGenerator.boolean();
  final Color? backgroundColor =
      faker.randomGenerator.boolean()
          ? kMyoroTestColors[faker.randomGenerator.integer(kMyoroTestColors.length)]
          : null;

  testWidgets('MyoroAppBar', (WidgetTester tester) async {
    late final MyoroAppBarThemeExtension themeExtension;

    await tester.pumpWidget(
      MyoroWidgetTester(
        child: Builder(
          builder: (BuildContext context) {
            themeExtension = context.resolveThemeExtension<MyoroAppBarThemeExtension>();

            return MyoroAppBar(
              bordered: bordered,
              backgroundColor: backgroundColor,
              child: const SizedBox.shrink(),
            );
          },
        ),
      ),
    );
    await tester.pumpAndSettle();

    expect(find.byType(MyoroAppBar), findsOneWidget);

    // Wrapper
    expect(
      find.byWidgetPredicate(
        (w) =>
            w is Column &&
            w.mainAxisSize == MainAxisSize.min &&
            w.children.length == (bordered ? 2 : 1),
      ),
      findsOneWidget,
    );

    // Contents of the app bar
    expect(
      find.byWidgetPredicate(
        (w) =>
            w is Flexible &&
            w.child is Container &&
            (w.child as Container).color == (backgroundColor ?? themeExtension.primaryColor) &&
            (w.child as Container).padding == themeExtension.contentPadding,
      ),
      findsOneWidget,
    );

    // Border
    expect(
      find.byWidgetPredicate(
        (w) =>
            w is MyoroBasicDivider &&
            w.configuration == const MyoroBasicDividerConfiguration(direction: Axis.horizontal),
      ),
      bordered ? findsOneWidget : findsNothing,
    );
  });
}
