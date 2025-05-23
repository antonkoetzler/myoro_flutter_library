import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Widget test of [MyoroRadio].
void main() {
  final bool? initialValue = faker.randomGenerator.boolean() ? faker.randomGenerator.boolean() : null;
  final String label = faker.lorem.word();
  late final TextStyle? labelTextStyle;

  setUp(() {
    MyoroTypographyDesignSystem.isDarkMode = faker.randomGenerator.boolean();
    labelTextStyle = MyoroTypographyDesignSystem.instance.randomTextStyle;
  });

  testWidgets('MyoroRadio', (WidgetTester tester) async {
    bool onChangedExecuted = false;

    late final MyoroRadioThemeExtension themeExtension;

    await tester.pumpWidget(
      MyoroWidgetTester(
        child: Builder(
          builder: (BuildContext context) {
            themeExtension = context.resolveThemeExtension<MyoroRadioThemeExtension>();

            return MyoroRadio(
              configuration: MyoroRadioConfiguration(
                initialValue: initialValue,
                label: label,
                labelTextStyle: labelTextStyle,
                onChanged: (_) => onChangedExecuted = true,
              ),
            );
          },
        ),
      ),
    );
    await tester.pumpAndSettle();

    expect(find.byType(MyoroRadio), findsOneWidget);
    expect(
      find.byWidgetPredicate(
        (Widget w) =>
            w is Row &&
            w.mainAxisSize == MainAxisSize.min &&
            w.children.length == 3 &&
            w.children.first is ValueListenableBuilder<bool> &&
            w.children[1] is SizedBox &&
            (w.children[1] as SizedBox).width == themeExtension.spacing &&
            w.children.last is Flexible &&
            (w.children.last as Flexible).child is Text &&
            ((w.children.last as Flexible).child as Text).data == label &&
            ((w.children.last as Flexible).child as Text).style == (labelTextStyle ?? themeExtension.labelTextStyle),
      ),
      findsOneWidget,
    );
    expect(
      find.byWidgetPredicate(
        (Widget w) =>
            w is Radio &&
            w.value &&
            w.groupValue == (initialValue ?? false) &&
            w.toggleable &&
            w.activeColor == themeExtension.activeColor &&
            w.hoverColor == themeExtension.hoverColor &&
            w.splashRadius == themeExtension.splashRadius,
      ),
      findsOneWidget,
    );

    await tester.tap(find.byType(Radio<bool>));
    await tester.pump();
    expect(onChangedExecuted, isTrue);
  });
}
