import 'package:faker/faker.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

import '../../../test_exports.dart';

/// Widget test of [MyoroPieGraph].
void main() {
  final items = List.generate(
    faker.randomGenerator.integer(50),
    (_) => MyoroPieGraphItem.fake(),
  );

  Future<void> pumpWidget(WidgetTester tester, MyoroPieGraphEnum typeEnum) async {
    await tester.pumpWidget(
      MyoroWidgetTester(
        child: MyoroPieGraph(
          typeEnum,
          centerWidget: typeEnum.isPie ? null : const SizedBox.shrink(),
          items: items,
        ),
      ),
    );
    await tester.pumpAndSettle();
  }

  void sharedExpects(MyoroPieGraphEnum typeEnum) {
    // Wrapper.
    expect(
      find.byWidgetPredicate(
        (Widget w) =>
            w is Stack &&
            w.alignment == Alignment.center &&
            w.children.length == (typeEnum.isPie ? 1 : 2) &&
            (typeEnum.isPie ? true : w.children.last is SizedBox), // The inserted [SizedBox.shrink].
      ),
      findsOneWidget,
    );

    // [_PieGraph].
    expect(
      find.byWidgetPredicate(
        (Widget w) => w is PieChart && w.data.centerSpaceRadius == (typeEnum.isPie ? 0 : 100) && w.data.sections.length == items.length,
      ),
      findsOneWidget,
    );
  }

  testWidgets('MyoroPieGraph with [MyoroPieGraphEnum.pie]', (WidgetTester tester) async {
    const typeEnum = MyoroPieGraphEnum.pie;
    await pumpWidget(tester, typeEnum);
    sharedExpects(typeEnum);
  });

  testWidgets('MyoroPieGraph with [MyoroPieGraphEnum.donut]', (WidgetTester tester) async {
    const typeEnum = MyoroPieGraphEnum.donut;
    await pumpWidget(tester, typeEnum);
    sharedExpects(typeEnum);
  });
}
