import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  testWidgets('MyoroScreen', (tester) async {
    await tester.pumpWidget(MyoroWidgetTester(child: MyoroScreen(configuration: MyoroScreenConfiguration.fake())));
    await tester.pumpAndSettle();
    expect(find.byType(MyoroScreen), findsOneWidget);
  });
}
