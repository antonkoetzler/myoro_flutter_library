import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  testWidgets('MyoroCircularLoader', (tester) async {
    await tester.pumpWidget(const MyoroWidgetTester(child: MyoroCircularLoader()));
    await tester.pump();
    expect(find.byType(MyoroCircularLoader), findsOneWidget);
  });
}
