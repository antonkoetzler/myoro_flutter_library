import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  testWidgets('MyoroDatePickerInput', (tester) async {
    await tester.pumpWidget(
      const MyoroWidgetTester(child: MyoroDatePickerInput(configuration: MyoroInputConfiguration())),
    );
    await tester.pumpAndSettle();
    expect(find.byType(MyoroDatePickerInput), findsOneWidget);
  });
}
