import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  testWidgets('MyoroCarousel', (tester) async {
    await tester.pumpWidget(
      MyoroWidgetTester(
        child: MyoroCarousel(
          configuration: MyoroCarouselConfiguration(displayTraversalButtons: true, items: const [SizedBox.shrink()]),
        ),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.byType(MyoroCarousel), findsOneWidget);
    await tester.tap(find.byType(MyoroIconTextButton).first);
  });
}
