import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Widget test of [MyoroSnackBarHelper].
void main() {
  testWidgets('MyoroSnackBarHelper.showSnackBar & MyoroSnackBarHelper.hideSnackBar', (
    WidgetTester tester,
  ) async {
    late final BuildContext context;

    await tester.pumpWidget(
      MyoroWidgetTester(
        child: Builder(
          builder: (BuildContext buildContext) {
            context = buildContext;
            return const SizedBox.shrink();
          },
        ),
      ),
    );
    await tester.pumpAndSettle();

    MyoroSnackBarHelper.showSnackBar(
      context,
      snackBar: const MyoroSnackBar(
        configuration: MyoroSnackBarConfiguration(message: 'Hello, World!'),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.byType(MyoroSnackBar), findsOneWidget);

    MyoroSnackBarHelper.hideSnackBar(context);
    await tester.pumpAndSettle();
    expect(find.byType(MyoroSnackBar), findsNothing);
  });
}
