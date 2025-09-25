import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  final controller = MyoroDrawerController();

  Future<void> testCase(WidgetTester tester, Function(BuildContext context) callback) async {
    late final BuildContext context;
    await tester.pumpWidget(
      MyoroApp(
        configuration: MyoroAppConfiguration(
          home: MyoroScreen(
            configuration: MyoroScreenConfiguration(
              drawerController: controller,
              body: Builder(
                builder: (buildContext) {
                  context = buildContext;
                  return const SizedBox.shrink();
                },
              ),
            ),
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();
    await callback(context);
  }

  testWidgets('MyoroDrawerController.openDrawer', (tester) async {
    await testCase(tester, (context) async {
      controller.openDrawer(context, drawer: MyoroDrawer(configuration: MyoroDrawerConfiguration.fake()));
      await tester.pumpAndSettle();
      expect(find.byType(MyoroDrawer), findsOneWidget);
    });
  });

  testWidgets('MyoroDrawerController.closeDrawer', (tester) async {
    await testCase(tester, (context) async {
      controller.openDrawer(context, drawer: MyoroDrawer(configuration: MyoroDrawerConfiguration.fake()));
      await tester.pumpAndSettle();
      expect(find.byType(MyoroDrawer), findsOneWidget);
      controller.closeDrawer(context);
      await tester.pumpAndSettle();
      expect(find.byType(MyoroDrawer), findsNothing);
    });
  });
}
