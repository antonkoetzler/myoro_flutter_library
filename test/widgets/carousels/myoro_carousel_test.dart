import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  final configuration = MyoroCarouselConfiguration.fake();

  late final MyoroCarouselThemeExtension themeExtension;

  void expectTraversalButton(Alignment alignment, IconData icon) {
    expect(
      find.byWidgetPredicate(
        (Widget w) =>
            w is Align &&
            w.alignment == alignment &&
            w.child is IntrinsicWidth &&
            (w.child as IntrinsicWidth).child is MyoroIconTextButton &&
            ((w.child as IntrinsicWidth).child as MyoroIconTextButton)
                    .configuration
                    .buttonConfiguration
                    ?.borderBuilder !=
                null,
      ),
      findsOneWidget,
    );
  }

  testWidgets('MyoroCarousel', (WidgetTester tester) async {
    await tester.pumpWidget(
      MyoroWidgetTester(
        child: Builder(
          builder: (BuildContext context) {
            themeExtension = context.resolveThemeExtension<MyoroCarouselThemeExtension>();
            return MyoroCarousel(configuration: configuration);
          },
        ),
      ),
    );
    await tester.pump();

    expect(find.byType(MyoroCarousel), findsOneWidget);

    // Wrapper.
    expect(
      find.byWidgetPredicate((Widget w) => w is Stack && w.alignment == Alignment.center),
      findsOneWidget,
    );

    // [_Carousel].
    expect(
      find.byWidgetPredicate(
        (Widget w) =>
            w is CarouselSlider &&
            w.items == configuration.items &&
            w.options.initialPage == configuration.initialItem &&
            w.options.scrollDirection == configuration.direction,
      ),
      findsOneWidget,
    );

    // [_TraversalButton]s.
    if (configuration.displayTraversalButtons) {
      expectTraversalButton(Alignment.centerLeft, themeExtension.previousItemButtonIcon);
      expectTraversalButton(Alignment.centerRight, themeExtension.nextItemButtonIcon);
    }
  });
}
