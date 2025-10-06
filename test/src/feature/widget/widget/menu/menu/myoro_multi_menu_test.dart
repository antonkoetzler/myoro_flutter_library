import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  test('MyoroMultiMenu assertion case', () {
    expect(() => MyoroMultiMenu<String>(), throwsAssertionError);
    expect(
      () => MyoroMultiMenu<String>(
        controller: MyoroMultiMenuController(
          configuration: MyoroMultiMenuConfiguration(
            request: () => {faker.lorem.word()},
            itemBuilder: (item) => MyoroMenuItem.fake(),
          ),
        ),
        configuration: MyoroMultiMenuConfiguration(
          request: () => {faker.lorem.word()},
          itemBuilder: (item) => MyoroMenuItem.fake(),
        ),
      ),
      throwsAssertionError,
    );
  });

  testWidgets('MyoroMultiMenu with controller', (tester) async {
    final controller = MyoroMultiMenuController<String>(
      configuration: MyoroMultiMenuConfiguration(
        request: () => {faker.lorem.word()},
        itemBuilder: (item) => MyoroMenuItem.fake(),
      ),
    );
    await tester.pumpWidget(
      MyoroWidgetTester(child: MyoroMultiMenu<String>(controller: controller)),
    );
    await tester.pumpAndSettle();
    expect(find.byType(MyoroMultiMenu<String>), findsOneWidget);
    controller.dispose();
  });

  testWidgets('MyoroMultiMenu with configuration', (tester) async {
    await tester.pumpWidget(
      MyoroWidgetTester(
        child: MyoroMultiMenu<String>(
          configuration: MyoroMultiMenuConfiguration(
            request: () => {faker.lorem.word()},
            itemBuilder: (item) => MyoroMenuItem.fake(),
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.byType(MyoroMultiMenu<String>), findsOneWidget);
  });
}
