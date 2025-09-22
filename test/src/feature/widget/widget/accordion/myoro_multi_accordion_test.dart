import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  final items = List.generate(faker.randomGenerator.integer(10, min: 1), (index) => 'Item #$index').toSet();

  testWidgets('MyoroMultiAccordion', (tester) async {
    await tester.pumpWidget(
      MyoroWidgetTester(
        child: MyoroMultiAccordion(configuration: MyoroMultiAccordionConfiguration.fake(items: items)),
      ),
    );
    await tester.pumpAndSettle();
  });
}
