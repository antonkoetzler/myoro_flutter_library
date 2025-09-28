import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  testWidgets('MyoroGroupRadio', (tester) async {
    await tester.pumpWidget(
      MyoroWidgetTester(child: MyoroGroupRadio(configuration: MyoroGroupRadioConfiguration.fake())),
    );
    await tester.pumpAndSettle();
    expect(find.byType(MyoroGroupRadio), findsOneWidget);

    // Enable a radio
    await tester.tap(find.byType(Radio<bool>).first);
    await tester.pumpAndSettle();
  });
}
