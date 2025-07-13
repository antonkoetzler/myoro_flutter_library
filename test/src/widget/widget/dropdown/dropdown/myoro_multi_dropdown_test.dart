import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';

YOU ARE HERE.

void main() {
  final controller = MyoroMultiDropdownController<String>();

  tearDown(controller.dispose);

  testWidgets('MyoroMultiDropdown', (tester) async {
    await tester.pumpWidget(
      MyoroWidgetTester(
        child: InheritedProvider(
          create: (_) => MyoroMultiDropdownViewModel<String>(),
          child: MyoroMultiDropdown<String>(
            createViewModel: false,
            controller: controller,
            configuration: MyoroMultiDropdownConfiguration(
              menuConfiguration: MyoroMenuConfiguration(
                request: () => {faker.lorem.word()},
                itemBuilder: (item) => MyoroMenuItem(textConfiguration: MyoroTextConfiguration(text: item)),
              ),
              selectedItemBuilder: (item) => item,
            ),
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.byType(MyoroMultiDropdown<String>), findsOneWidget);
  });
}
