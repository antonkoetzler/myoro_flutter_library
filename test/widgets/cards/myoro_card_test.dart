import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Widget test of [MyoroCard].
void main() {
  final String title = faker.lorem.word();
  late final TextStyle? titleTextStyle;
  final EdgeInsets? padding =
      faker.randomGenerator.boolean()
          ? EdgeInsets.all(faker.randomGenerator.decimal())
          : null;
  final double? width =
      faker.randomGenerator.boolean() ? faker.randomGenerator.decimal() : null;
  final double? height =
      faker.randomGenerator.boolean() ? faker.randomGenerator.decimal() : null;

  setUp(() {
    MyoroTypographyDesignSystem.textTheme = createMyoroTextTheme(
      faker.randomGenerator.boolean(),
    );
    titleTextStyle =
        faker.randomGenerator.boolean()
            ? MyoroTypographyDesignSystem.instance.randomTextStyle
            : null;
  });

  testWidgets('MyoroCard', (WidgetTester tester) async {
    late final MyoroCardThemeExtension themeExtension;

    await tester.pumpWidget(
      MyoroWidgetTester(
        child: Builder(
          builder: (BuildContext context) {
            themeExtension =
                context.resolveThemeExtension<MyoroCardThemeExtension>();

            return MyoroCard(
              title: title,
              titleTextStyle: titleTextStyle,
              padding: padding,
              width: width,
              height: height,
              child: const SizedBox.shrink(),
            );
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
            w is Column &&
            w.mainAxisSize == MainAxisSize.min &&
            w.children.length == 3 &&
            w.children[1] is SizedBox &&
            (w.children[1] as SizedBox).height ==
                themeExtension.titleCardSpacing &&
            w.children.last is Flexible,
      ),
      findsOneWidget,
    );

    // [_Title].
    expect(
      find.byWidgetPredicate(
        (Widget w) =>
            w is Text &&
            w.data == title &&
            w.style == (titleTextStyle ?? themeExtension.textStyle),
      ),
      findsOneWidget,
    );

    // [_Card].
    expect(
      find.byWidgetPredicate(
        (Widget w) =>
            w is Container &&
            w.padding == (padding ?? themeExtension.padding) &&
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
