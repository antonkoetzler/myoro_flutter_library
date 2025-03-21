import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Widget test of [MyoroIconTextHoverButton].
void main() {
  final configuration = MyoroHoverButtonConfiguration.fake();
  final icon =
      kMyoroTestIcons[faker.randomGenerator.integer(kMyoroTestIcons.length)];
  final iconSize =
      faker.randomGenerator.boolean()
          ? faker.randomGenerator.integer(500).toDouble()
          : null;
  final text = faker.lorem.word();
  late final TextStyle? textStyle;
  final textAlign =
      faker.randomGenerator.boolean()
          ? TextAlign.values[faker.randomGenerator.integer(
            TextAlign.values.length,
          )]
          : null;
  final padding =
      faker.randomGenerator.boolean()
          ? EdgeInsets.all(faker.randomGenerator.decimal())
          : null;
  final mainAxisAlignment =
      faker.randomGenerator.boolean()
          ? MainAxisAlignment.values[faker.randomGenerator.integer(
            MainAxisAlignment.values.length,
          )]
          : null;
  bool onPressedExecuted = false;

  setUp(() {
    MyoroTypographyDesignSystem.textTheme = createMyoroTextTheme(
      faker.randomGenerator.boolean(),
    );
    textStyle = MyoroTypographyDesignSystem.instance.randomTextStyle;
  });

  testWidgets('MyoroIconTextHoverButton', (WidgetTester tester) async {
    // Testing assertion of both [MyoroIconTextHoverButton.text] & [MyoroIconTextHoverButton.icon] being null.
    expect(() => MyoroIconTextHoverButton(), throwsAssertionError);

    late final MyoroIconTextHoverButtonThemeExtension themeExtension;

    await tester.pumpWidget(
      MyoroWidgetTester(
        child: Builder(
          builder: (BuildContext context) {
            themeExtension =
                context
                    .resolveThemeExtension<
                      MyoroIconTextHoverButtonThemeExtension
                    >();

            return MyoroIconTextHoverButton(
              configuration: configuration,
              icon: icon,
              iconSize: iconSize,
              text: text,
              textStyle: textStyle,
              textAlign: textAlign,
              padding: padding,
              mainAxisAlignment: mainAxisAlignment,
              onPressed: () => onPressedExecuted = true,
            );
          },
        ),
      ),
    );
    await tester.pumpAndSettle();

    expect(find.byType(MyoroIconTextHoverButton), findsOneWidget);

    // Wrapper.
    expect(find.byType(MyoroHoverButton), findsOneWidget);

    // Content padding.
    expect(
      find.byWidgetPredicate(
        (Widget w) =>
            w is Padding &&
            w.padding == (padding ?? themeExtension.contentPadding) &&
            w.child is Row,
      ),
      findsOneWidget,
    );

    // Contents.
    expect(
      find.byWidgetPredicate(
        (Widget w) =>
            w is Row &&
            w.mainAxisAlignment ==
                (mainAxisAlignment ?? themeExtension.mainAxisAlignment) &&
            w.children.length == 3 &&
            w.children.first is Icon &&
            (w.children.first as Icon).icon == icon &&
            (w.children.first as Icon).size == iconSize &&
            (w.children.first as Icon).color ==
                (configuration.isHovered == true
                    ? (configuration.primaryColor ??
                        themeExtension.primaryColor)
                    : (configuration.onPrimaryColor ??
                        themeExtension.onPrimaryColor)) &&
            w.children[1] is SizedBox &&
            (w.children[1] as SizedBox).width == themeExtension.spacing &&
            w.children.last is Expanded &&
            (w.children.last as Expanded).child is Text &&
            ((w.children.last as Expanded).child as Text).data == text &&
            ((w.children.last as Expanded).child as Text).textAlign ==
                (textAlign ?? TextAlign.left) &&
            ((w.children.last as Expanded).child as Text).maxLines ==
                themeExtension.textMaxLines &&
            ((w.children.last as Expanded).child as Text).overflow ==
                themeExtension.textOverflow,
      ),
      findsOneWidget,
    );

    // Testing [MyoroIconTextHoverButton.onPressed].
    await tester.tap(find.byType(MyoroIconTextHoverButton));
    await tester.pump();
    expect(onPressedExecuted, isTrue);
  });
}
