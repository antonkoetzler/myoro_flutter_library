import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  testWidgets('MyoroSlider', (tester) async {
    await tester.pumpWidget(
      MyoroWidgetTester(
        child: SizedBox(
          width: 300,
          child: MyoroSlider(
            configuration: MyoroSliderConfiguration.fake().copyWith(
              label: faker.lorem.word(),
              currentValueText: 'qwe',
              footerText: 'qwe',
              maxValueText: 'qwe',
            ),
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.byType(MyoroSlider), findsOneWidget);
  });
}
