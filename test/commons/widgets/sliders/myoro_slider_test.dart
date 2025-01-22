import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Widget test of [MyoroSlider].
void main() {
  final String label = faker.lorem.word();
  late final TextStyle? labelTextStyle;
  final double? width = faker.randomGenerator.boolean() ? 1000 : null;
  final double maxValue = faker.randomGenerator.decimal();
  final double minValue = faker.randomGenerator.integer(maxValue.toInt()).toDouble();
  final double initialValue = faker.randomGenerator.decimal(
    scale: maxValue,
    min: minValue,
  );

  late final MyoroSliderThemeExtension themeExtension;

  void expectIndicatorText(String text, {bool isFooter = false}) {
    expect(
      find.byWidgetPredicate(
        (Widget w) =>
            w is Text &&
            w.data == text &&
            w.textAlign == themeExtension.indicatorTextAlignment &&
            w.style == themeExtension.indicatorTextStyle.copyWith(height: isFooter ? 0 : 0.5),
      ),
      findsOneWidget,
    );
  }

  setUp(() {
    MyoroTypographyTheme.textTheme = createMyoroTextTheme(faker.randomGenerator.boolean());
    labelTextStyle = MyoroTypographyTheme.instance.randomTextStyle;
  });

  testWidgets('MyoroSlider', (WidgetTester tester) async {
    final bool minMaxValuesEnabled = faker.randomGenerator.boolean();
    bool onChangedExecuted = false;
    const currentValueIndicatorText = 'current';
    const maxValueIndicatorText = 'max';
    const footerIndicatorText = 'footer';

    await tester.pumpWidget(
      MyoroWidgetTester(
        child: Builder(
          builder: (BuildContext context) {
            themeExtension = context.resolveThemeExtension<MyoroSliderThemeExtension>();

            return MyoroSlider(
              label: label,
              labelTextStyle: labelTextStyle,
              width: width,
              initialValue: minMaxValuesEnabled ? initialValue : null,
              minValue: minMaxValuesEnabled ? minValue : null,
              maxValue: minMaxValuesEnabled ? maxValue : null,
              currentValueIndicatorTextBuilder: (_) => currentValueIndicatorText,
              maxValueIndicatorTextBuilder: (_) => maxValueIndicatorText,
              footerIndicatorTextBuilder: (_) => footerIndicatorText,
              onChanged: (_) => onChangedExecuted = true,
            );
          },
        ),
      ),
    );
    await tester.pumpAndSettle();

    expect(find.byType(MyoroSlider), findsOneWidget);

    // [MyoroSlider].
    expect(
      find.byWidgetPredicate(
        (Widget w) =>
            w is SizedBox &&
            w.width == width &&
            w.child is Column &&
            (w.child as Column).mainAxisSize == MainAxisSize.min &&
            (w.child as Column).mainAxisAlignment == MainAxisAlignment.center &&
            (w.child as Column).children.length == 2 &&
            // (w.child as Column).children.first is [_Label] &&
            (w.child as Column).children.last is Padding &&
            ((w.child as Column).children.last as Padding).padding == themeExtension.sliderPadding &&
            ((w.child as Column).children.last as Padding).child is ValueListenableBuilder<double>,
      ),
      findsOneWidget,
    );

    // [_Label].
    expect(
      find.byWidgetPredicate(
        (Widget w) => w is Text && w.style == (labelTextStyle ?? themeExtension.labelTextStyle),
      ),
      findsOneWidget,
    );

    // [Row] with slider and indicator texts.
    expect(
      find.byWidgetPredicate(
        (Widget w) =>
            w is Row &&
            w.children.length == 3 &&
            // w.children.first is [_IndicatorText] &&
            w.children[1] is Expanded &&
            (w.children[1] as Expanded).child is Slider &&
            ((w.children[1] as Expanded).child as Slider).value == (minMaxValuesEnabled ? initialValue : 0) &&
            ((w.children[1] as Expanded).child as Slider).min == (minMaxValuesEnabled ? minValue : 0) &&
            ((w.children[1] as Expanded).child as Slider).max == (minMaxValuesEnabled ? maxValue : 1),
        // w.children.first is [_IndicatorText],
      ),
      findsOneWidget,
    );

    // [_IndicatorText]s.
    expectIndicatorText(currentValueIndicatorText);
    expectIndicatorText(maxValueIndicatorText);
    expectIndicatorText(footerIndicatorText, isFooter: true);

    // Confirming that [MyoroSlider.onChanged] works.
    await tester.drag(find.byType(Slider), const Offset(30, 0), warnIfMissed: false);
    expect(onChangedExecuted, isTrue);
  });
}
