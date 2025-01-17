import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';

import '../../../test_exports.dart';

/// Widget test of [MyoroScreen].
void main() {
  testWidgets('MyoroScreen', (WidgetTester tester) async {
    await tester.pumpWidget(const MyoroWidgetTester(child: MyoroScreen()));
    await tester.pumpAndSettle();
    expect(find.byType(MyoroScreen), findsOneWidget);
    expect(find.byType(InheritedProvider<MyoroDrawerController>), findsOneWidget);
    expect(find.byType(Scaffold), findsOneWidget);
  });
}
