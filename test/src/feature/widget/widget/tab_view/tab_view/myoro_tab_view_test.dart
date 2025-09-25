import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  testWidgets('MyoroTabView', (tester) async {
    final configuration = MyoroTabViewConfiguration.fake();
    await tester.pumpWidget(MyoroWidgetTester(child: MyoroTabView(configuration: configuration)));
    await tester.pumpAndSettle();
    expect(find.byType(MyoroTabView), findsOneWidget);
  });
}
