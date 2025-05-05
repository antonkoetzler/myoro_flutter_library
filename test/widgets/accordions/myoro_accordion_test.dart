import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  final configuration = MyoroAccordionConfiguration.fake();

  testWidgets('MyoroAccordion', (WidgetTester tester) async {
    await tester.pumpWidget(MyoroWidgetTester(child: MyoroAccordion(configuration: configuration)));
    await tester.pumpAndSettle();

    expect(find.byType(MyoroAccordion), findsOneWidget);
    expect(find.byType(Scrollbar), findsOneWidget);
    expect(find.byType(ListView), findsOneWidget);
  });
}
