import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Widget test of [MyoroForm].
void main() {
  testWidgets('MyoroForm', (WidgetTester tester) async {
    await tester.pumpWidget(
      MyoroWidgetTester(
        child: MyoroForm(builder: (_, __, ___) => const SizedBox.shrink()),
      ),
    );
    await tester.pumpAndSettle();

    expect(find.byType(MyoroForm), findsOneWidget);
    expect(
      find.byWidgetPredicate(
        (Widget w) =>
            w is Form && w.child is SizedBox, // Our [SizedBox.shrink].
      ),
      findsOneWidget,
    );
  });
}
