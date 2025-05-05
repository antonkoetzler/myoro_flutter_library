import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  final configuration = MyoroButtonConfiguration.fake();

  testWidgets('MyoroButton', (WidgetTester tester) async {
    await tester.pumpWidget(
      MyoroWidgetTester(
        child: MyoroButton(
          configuration: configuration,
          builder: (_, __) => const SizedBox.shrink(),
        ),
      ),
    );
    await tester.pumpAndSettle();

    expect(find.byType(MyoroButton), findsOneWidget);
    expect(
      find.byWidgetPredicate((Widget w) => w is MouseRegion && w.child is GestureDetector),
      findsOneWidget,
    );
  });
}
