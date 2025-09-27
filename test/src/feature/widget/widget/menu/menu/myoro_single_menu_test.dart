import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  test('MyoroSingleMenu assertion case', () {
    expect(() => MyoroSingleMenu<String>(), throwsAssertionError);
    expect(
      () => MyoroSingleMenu<String>(
        controller: MyoroSingleMenuController(
          configuration: MyoroSingleMenuConfiguration(
            request: () => {faker.lorem.word()},
            itemBuilder: (item) => MyoroMenuItem(),
          ),
        ),
        configuration: MyoroSingleMenuConfiguration(
          request: () => {faker.lorem.word()},
          itemBuilder: (item) => MyoroMenuItem(),
        ),
      ),
      throwsAssertionError,
    );
  });

  testWidgets('MyoroSingleMenu with controller', (tester) async {
    final controller = MyoroSingleMenuController<String>(
      configuration: MyoroSingleMenuConfiguration(
        request: () => {faker.lorem.word()},
        itemBuilder: (item) => MyoroMenuItem(),
      ),
    );
    await tester.pumpWidget(MyoroWidgetTester(child: MyoroSingleMenu<String>(controller: controller)));
    await tester.pumpAndSettle();
    expect(find.byType(MyoroSingleMenu<String>), findsOneWidget);
    controller.dispose();
  });

  testWidgets('MyoroSingleMenu with configuration', (tester) async {
    await tester.pumpWidget(
      MyoroWidgetTester(
        child: MyoroSingleMenu<String>(
          configuration: MyoroSingleMenuConfiguration(
            request: () => {faker.lorem.word()},
            itemBuilder: (item) => MyoroMenuItem(),
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.byType(MyoroSingleMenu<String>), findsOneWidget);
  });
}
