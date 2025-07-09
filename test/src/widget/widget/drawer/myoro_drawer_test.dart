import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  final drawerController = MyoroDrawerController();

  Future<void> testCase(WidgetTester tester, {required bool isEndDrawer}) async {
    late final BuildContext context;
    await tester.pumpWidget(
      MyoroApp(
        configuration: MyoroAppConfiguration(
          home: MyoroScreen(
            configuration: MyoroScreenConfiguration(
              drawerController: drawerController,
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
    drawerController.openDrawer(
      context,
      isEndDrawer: isEndDrawer,
      drawer: MyoroDrawer(configuration: MyoroDrawerConfiguration.fake().copyWith(showCloseButton: true)),
    );
    await tester.pumpAndSettle();
    expect(find.byType(MyoroDrawer), findsOneWidget);
    await tester.tap(find.byType(MyoroIconTextButton));
    await tester.pumpAndSettle();
    expect(find.byType(MyoroDrawer), findsNothing);
  }

  testWidgets('Normal drawer MyoroDrawer', (tester) async => await testCase(tester, isEndDrawer: false));
  testWidgets('End drawer MyoroDrawer', (tester) async => await testCase(tester, isEndDrawer: true));
}
