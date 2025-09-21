import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  testWidgets('MyoroFilePicker', (tester) async {
    await tester.pumpWidget(
      MyoroWidgetTester(child: MyoroFilePicker(configuration: MyoroFilePickerConfiguration.fake())),
    );
    await tester.pumpAndSettle();
    expect(find.byType(MyoroFilePicker), findsOneWidget);
  });
}
