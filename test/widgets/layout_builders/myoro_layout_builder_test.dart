import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Widget test of [MyoroLayoutBuilder].
void main() {
  testWidgets('MyoroLayoutBuilder', (WidgetTester tester) async {
    await tester.pumpWidget(
      MyoroWidgetTester(
        child: MyoroLayoutBuilder(builder: (_, __) => const SizedBox.shrink()),
      ),
    );
    await tester.pumpAndSettle();

    expect(find.byType(MyoroLayoutBuilder), findsOneWidget);

    // [MyoroLayoutBuilder].
    expect(find.byType(ValueListenableBuilder<BoxConstraints>), findsOneWidget);
  });
}
