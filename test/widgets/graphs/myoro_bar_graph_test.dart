import 'package:faker/faker.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Widget test of [MyoroBarGraph].
void main() {
  final bool sorted = faker.randomGenerator.boolean();
  final List<MyoroBarGraphGroup> items = List.generate(
    faker.randomGenerator.integer(100, min: 1),
    (_) => MyoroBarGraphGroup.fake(),
  );

  testWidgets('MyoroBarGraph', (WidgetTester tester) async {
    late final MyoroBarGraphThemeExtension themeExtension;

    await tester.pumpWidget(
      MyoroWidgetTester(
        child: Builder(
          builder: (BuildContext context) {
            themeExtension = context.resolveThemeExtension<MyoroBarGraphThemeExtension>();

            return MyoroBarGraph(configuration: MyoroBarGraphConfiguration(sorted: sorted, items: items));
          },
        ),
      ),
    );
    await tester.pumpAndSettle();

    expect(find.byType(MyoroBarGraph), findsOneWidget);

    // Wrapper.
    expect(
      find.byWidgetPredicate(
        (Widget w) => w is Padding && w.padding == const EdgeInsets.only(top: 22) && w.child is BarChart,
      ),
      findsOneWidget,
    );

    // [_SideTitle].
    expect(
      find.byWidgetPredicate(
        (Widget w) =>
            w is Padding &&
            w.child is Text &&
            (w.child as Text).textAlign == TextAlign.right &&
            (w.child as Text).style == themeExtension.sideTitleTextStyle,
      ),
      findsAtLeastNWidgets(1),
    );
  });
}
