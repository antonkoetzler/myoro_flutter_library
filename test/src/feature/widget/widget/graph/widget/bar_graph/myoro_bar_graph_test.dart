import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  testWidgets('MyoroBarGraph', (tester) async {
    await tester.pumpWidget(
      MyoroWidgetTester(
        child: MyoroBarGraph(
          configuration: MyoroBarGraphConfiguration(
            items: const [
              MyoroBarGraphGroup(x: 10, bars: [MyoroBarGraphBar(y: 5)]),
            ],
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.byType(MyoroBarGraph), findsOneWidget);
  });
}
