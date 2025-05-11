import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Widget test of [MyoroCheckbox].
void main() {
  setUp(() {
    MyoroTypographyDesignSystem.isDarkMode = faker.randomGenerator.boolean();
  });

  testWidgets('MyoroCheckbox', (WidgetTester tester) async {
    late final MyoroCheckboxThemeExtension themeExtension;

    final String label = faker.lorem.word();
    final TextStyle? labelTextStyle =
        faker.randomGenerator.boolean()
            ? MyoroTypographyDesignSystem.instance.randomTextStyle
            : null;
    final bool initialValue = faker.randomGenerator.boolean();

    await tester.pumpWidget(
      MyoroWidgetTester(
        child: Builder(
          builder: (BuildContext context) {
            themeExtension = context.resolveThemeExtension<MyoroCheckboxThemeExtension>();

            return MyoroCheckbox(
              configuration: MyoroCheckboxConfiguration(
                label: label,
                labelTextStyle: labelTextStyle,
                initialValue: initialValue,
                onChanged: (bool value) => expect(value, !initialValue),
              ),
            );
          },
        ),
      ),
    );
    await tester.pumpAndSettle();

    expect(find.byType(MyoroCheckbox), findsOneWidget);

    // Wrapper
    expect(
      find.byWidgetPredicate(
        (Widget w) =>
            w is Row &&
            w.mainAxisSize == MainAxisSize.min &&
            w.mainAxisAlignment == MainAxisAlignment.center &&
            w.crossAxisAlignment == CrossAxisAlignment.center &&
            w.children.length == 3 &&
            w.children.first is ValueListenableBuilder &&
            w.children[1] is SizedBox &&
            (w.children[1] as SizedBox).width == themeExtension.spacing &&
            w.children.last is Flexible,
      ),
      findsOneWidget,
    );

    // The checkbox within the [ValueListenableBuilder].
    expect(
      find.byWidgetPredicate(
        (Widget w) =>
            w is SizedBox &&
            w.width == 20 &&
            w.height == 20 &&
            w.child is Checkbox &&
            (w.child as Checkbox).value == initialValue &&
            (w.child as Checkbox).activeColor == themeExtension.activeColor &&
            (w.child as Checkbox).checkColor == themeExtension.checkColor &&
            (w.child as Checkbox).hoverColor == themeExtension.hoverColor &&
            (w.child as Checkbox).focusColor == themeExtension.focusColor &&
            (w.child as Checkbox).splashRadius == themeExtension.splashRadius &&
            (w.child as Checkbox).onChanged != null,
      ),
      findsOneWidget,
    );

    // The label next to the checkbox.
    expect(
      find.byWidgetPredicate(
        (Widget w) =>
            w is Flexible &&
            w.child is Padding &&
            (w.child as Padding).padding == const EdgeInsets.only(bottom: 4) &&
            (w.child as Padding).child is Text &&
            ((w.child as Padding).child as Text).data == label &&
            ((w.child as Padding).child as Text).style ==
                (labelTextStyle ?? themeExtension.labelTextStyle),
      ),
      findsOneWidget,
    );

    // Testing the tapping
    await tester.tap(find.byType(Checkbox));
  });
}
