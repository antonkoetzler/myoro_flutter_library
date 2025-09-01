import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  testWidgets('MyoroLayoutBuilder', (tester) async {
    await tester.pumpWidget(MyoroWidgetTester(child: MyoroLayoutBuilder(builder: (_, _) => const SizedBox.shrink())));
    await tester.pumpAndSettle();
    expect(find.byType(MyoroLayoutBuilder), findsOneWidget);
  });
}
