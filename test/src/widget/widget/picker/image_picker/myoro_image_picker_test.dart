import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  testWidgets('MyoroImagePicker', (tester) async {
    await tester.pumpWidget(
      MyoroWidgetTester(child: MyoroImagePicker(configuration: MyoroImagePickerConfiguration.fake())),
    );
    await tester.pumpAndSettle();
    expect(find.byType(MyoroImagePicker), findsOneWidget);
  });
}
