import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  testWidgets('MyoroRadio', (tester) async {
    await tester.pumpWidget(MyoroWidgetTester(child: MyoroRadio(configuration: MyoroRadioConfiguration.fake())));
    await tester.pumpAndSettle();
    expect(find.byType(MyoroRadio), findsOneWidget);
  });
}
