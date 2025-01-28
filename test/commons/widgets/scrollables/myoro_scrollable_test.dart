import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Widget test of [MyoroScrollable].
void main() {
  final Axis direction = Axis.values[faker.randomGenerator.integer(Axis.values.length)];
  final EdgeInsets? padding = faker.randomGenerator.boolean() ? EdgeInsets.all(faker.randomGenerator.decimal()) : null;
  final List<Widget> children = List.generate(
    faker.randomGenerator.integer(100),
    (_) => const SizedBox.shrink(),
  );

  Future<MyoroScrollableThemeExtension> pumpWidget(WidgetTester tester, MyoroScrollableEnum scrollableType) async {
    late final MyoroScrollableThemeExtension themeExtension;
    await tester.pumpWidget(
      MyoroWidgetTester(
        child: Builder(
          builder: (BuildContext context) {
            themeExtension = context.resolveThemeExtension<MyoroScrollableThemeExtension>();

            return MyoroScrollable(
              scrollableType: scrollableType,
              direction: direction,
              padding: padding,
              children: children,
            );
          },
        ),
      ),
    );
    await tester.pumpAndSettle();
    return themeExtension;
  }

  testWidgets(
    'MyoroScrollable with MyoroScrollableEnum.singleChildScrollView',
    (WidgetTester tester) async {
      final themeExtension = await pumpWidget(tester, MyoroScrollableEnum.singleChildScrollView);
      expect(find.byType(MyoroScrollable), findsOneWidget);
      expect(find.byType(MyoroLayoutBuilder), findsOneWidget);
      expect(
        find.byWidgetPredicate(
          (Widget w) =>
              w is SingleChildScrollView &&
              w.scrollDirection == direction &&
              w.child is Padding &&
              (w.child as Padding).padding == (padding ?? themeExtension.padding) &&
              (w.child as Padding).child is SizedBox &&
              (direction.isVertical ? ((w.child as Padding).child as SizedBox).child is Column : ((w.child as Padding).child as SizedBox).child is Row),
        ),
        findsOneWidget,
      );
      expect(find.byType(ConstrainedBox), findsAtLeastNWidgets(children.length));
    },
  );

  testWidgets(
    'MyoroScrollable with MyoroScrollableEnum.customScrollView',
    (WidgetTester tester) async {
      final themeExtension = await pumpWidget(tester, MyoroScrollableEnum.customScrollView);
      expect(find.byType(MyoroScrollable), findsOneWidget);
      expect(
        find.byWidgetPredicate(
          (Widget w) =>
              w is CustomScrollView &&
              w.scrollDirection == direction &&
              w.slivers.length == 1 &&
              w.slivers.first is SliverPadding &&
              (w.slivers.first as SliverPadding).padding == (padding ?? themeExtension.padding),
        ),
        findsOneWidget,
      );
      // findsAtLeastWidgets(1) and not findsNWidgets(children.length) because of the
      // way that [CustomScrollView] hides content that does not need to be rendered.
      if (children.isNotEmpty) expect(find.byType(ConstrainedBox), findsAtLeastNWidgets(1));
    },
  );
}
