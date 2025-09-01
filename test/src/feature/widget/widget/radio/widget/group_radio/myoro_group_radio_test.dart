import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  // Create set of valid radios.
  final controller = MyoroGroupRadioController({
    for (int i = 0; i < faker.randomGenerator.integer(10, min: 1); i += 1) 'Item #$i': false,
  });

  testWidgets('MyoroGroupRadio', (tester) async {
    await tester.pumpWidget(
      MyoroWidgetTester(
        child: MyoroGroupRadio(
          configuration: MyoroGroupRadioConfiguration.fake().copyWith(radiosProvided: false, controller: controller),
        ),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.byType(MyoroGroupRadio), findsOneWidget);

    // Enable a radio
    await tester.tap(find.byType(Radio<bool>).first);
    await tester.pumpAndSettle();
  });
}
