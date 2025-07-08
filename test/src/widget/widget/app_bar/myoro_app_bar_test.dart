import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  testWidgets('MyoroAppBar', (tester) async {
    await tester.pumpWidget(MyoroWidgetTester(child: MyoroAppBar(configuration: MyoroAppBarConfiguration.fake())));
    await tester.pumpAndSettle();
    expect(find.byType(MyoroAppBar), findsOneWidget);
  });
}
