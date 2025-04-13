import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  testWidgets('MyoroMenu', (WidgetTester tester) async {
    await tester.pumpWidget(MyoroWidgetTester(child: MyoroMenu()));
  });
}
