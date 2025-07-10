import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

WHEN YOU ARE START MAKING SOME BREAD, YOU CAN KEEP REFINING MFL. YOU GOTTA STOP PROCRASTINATING

void main() {
  testWidgets('MyoroMultiDropdown', (tester) async {
    await tester.pumpWidget(
      MyoroWidgetTester(
        child: MyoroMultiDropdown<String>(
          createViewModel: false, // TODO: Inject view model
          configuration: MyoroMultiDropdownConfiguration<String>(
            menuConfiguration: MyoroMenuConfiguration(
              request: () => {faker.lorem.word()},
              itemBuilder: (item) => MyoroMenuItem(textConfiguration: MyoroTextConfiguration(text: item)),
            ),
            selectedItemBuilder: (item) => item,
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.byType(MyoroMultiDropdown<String>), findsOneWidget);
  });
}
