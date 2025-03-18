import 'package:carousel_slider/carousel_slider.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Widget test of [MyoroCarousel].
void main() {
  final List<Widget> items = List.generate(
    faker.randomGenerator.integer(10),
    (int index) => Text('$index'),
  );
  final Axis direction =
      Axis.values[faker.randomGenerator.integer(Axis.values.length)];
  const bool displayTraversalButtons = true;
  final int initialItem = faker.randomGenerator.integer(items.length);

  late final MyoroCarouselThemeExtension themeExtension;

  void expectTraversalButton(Alignment alignment, IconData icon) {
    expect(
      find.byWidgetPredicate(
        (Widget w) =>
            w is Align &&
            w.alignment == alignment &&
            w.child is IntrinsicWidth &&
            (w.child as IntrinsicWidth).child is MyoroIconTextHoverButton &&
            ((w.child as IntrinsicWidth).child as MyoroIconTextHoverButton)
                    .configuration
                    ?.bordered ==
                themeExtension.traversalButtonBordered,
      ),
      findsOneWidget,
    );
  }

  testWidgets('MyoroCarousel', (WidgetTester tester) async {
    await tester.pumpWidget(
      MyoroWidgetTester(
        child: Builder(
          builder: (BuildContext context) {
            themeExtension =
                context.resolveThemeExtension<MyoroCarouselThemeExtension>();

            return MyoroCarousel(
              direction: direction,
              displayTraversalButtons: displayTraversalButtons,
              initialItem: initialItem,
              items: items,
            );
          },
        ),
      ),
    );
    await tester.pumpAndSettle();

    expect(find.byType(MyoroCarousel), findsOneWidget);

    // Wrapper.
    expect(
      find.byWidgetPredicate(
        (Widget w) =>
            w is Stack &&
            w.alignment == Alignment.center &&
            w.children.length == 3 &&
            w.children[1] is Positioned &&
            w.children.last is Positioned,
      ),
      findsOneWidget,
    );

    // [_Carousel].
    expect(
      find.byWidgetPredicate(
        (Widget w) =>
            w is CarouselSlider &&
            w.items == items &&
            w.options.initialPage == initialItem &&
            w.options.scrollDirection == direction,
      ),
      findsOneWidget,
    );

    // [_TraversalButton]s.
    expectTraversalButton(
        Alignment.centerLeft, themeExtension.previousItemButtonIcon);
    expectTraversalButton(
        Alignment.centerRight, themeExtension.nextItemButtonIcon);
  });
}
