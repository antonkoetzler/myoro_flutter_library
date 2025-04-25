import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Widget/unit test for [MyoroDrawerController].
void main() {
  const drawer = MyoroDrawer(child: SizedBox.shrink());

  Future<void> closeDrawerAndExpectNothing(BuildContext context, WidgetTester tester) async {
    context.closeDrawer();
    await tester.pumpAndSettle();
    expect(find.byType(MyoroDrawer), findsNothing);
  }

  testWidgets('[MyoroDrawerController] normal drawer tests.', (WidgetTester tester) async {
    late final BuildContext context;

    await tester.pumpWidget(
      MyoroWidgetTester(
        child: Builder(
          builder: (BuildContext builderContext) {
            context = builderContext;
            return const SizedBox.shrink();
          },
        ),
      ),
    );
    await tester.pumpAndSettle();

    // Open a normal drawer.
    context.openDrawer(drawer: drawer);
    await tester.pumpAndSettle();
    expect(find.byType(MyoroDrawer), findsOneWidget);

    // Close a normal drawer.
    await closeDrawerAndExpectNothing(context, tester);
  });

  testWidgets('[MyoroDrawerController] end drawer tests.', (WidgetTester tester) async {
    late final BuildContext context;

    await tester.pumpWidget(
      MyoroWidgetTester(
        child: Builder(
          builder: (BuildContext builderContext) {
            context = builderContext;
            return const SizedBox.shrink();
          },
        ),
      ),
    );
    await tester.pumpAndSettle();

    // Open an end drawer.
    context.openDrawer(isEndDrawer: true, drawer: drawer);
    await tester.pumpAndSettle();
    expect(find.byType(MyoroDrawer), findsOneWidget);

    // Close an end drawer.
    await closeDrawerAndExpectNothing(context, tester);
  });
}
