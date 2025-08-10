import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  testWidgets('MyoroSlider', (tester) async {
    await tester.pumpWidget(
      MyoroWidgetTester(
        child: MyoroSlider(
          configuration: MyoroSliderConfiguration.fake().copyWith(
            width: 300,
            label: faker.lorem.word(),
            currentValueIndicatorTextBuilder: (_) => 'qwe',
            footerIndicatorTextBuilder: (_) => 'qwe',
            maxValueIndicatorTextBuilder: (_) => 'qwe',
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.byType(MyoroSlider), findsOneWidget);
  });
}
