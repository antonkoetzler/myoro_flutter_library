import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';

void main() {
  Future<void> testCase(WidgetTester tester, Function() callback) async {
    await tester.pumpWidget(
      MyoroWidgetTester(
        child: MyoroSearchInput<String>(
          configuration: MyoroSearchInputConfiguration<String>(
            request: (_) async {
              await Future.delayed(const Duration(milliseconds: 500));
              return {};
            },
            itemBuilder: (item) => MyoroMenuItem(
              iconTextButtonConfiguration: MyoroIconTextButtonConfiguration(
                iconConfiguration: MyoroIconConfiguration(icon: Icons.add),
                textConfiguration: MyoroTextConfiguration(text: item),
              ),
            ),
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.byType(MyoroSearchInput<String>), findsOneWidget);
    await callback();
  }

  testWidgets('MyoroSearchInput enter functionality', (tester) async {
    await testCase(tester, () async {
      await tester.tap(find.byType(TextFormField));
      await tester.pumpAndSettle();
      await tester.testTextInput.receiveAction(TextInputAction.done);
      await tester.pumpAndSettle();
      expect(find.byType(MyoroSingleMenu<String>), findsOneWidget);
    });
  });

  testWidgets('MyoroSearchInput search button functionality', (tester) async {
    await testCase(tester, () async {
      await tester.tap(find.byType(MyoroButton));
      await tester.pumpAndSettle();
      expect(find.byType(MyoroSingleMenu<String>), findsOneWidget);
    });
  });

  testWidgets('MyoroSearchInput search button shows loading state', (tester) async {
    await tester.pumpWidget(
      MyoroWidgetTester(
        child: MyoroSearchInput<String>(
          configuration: MyoroSearchInputConfiguration<String>(
            request: (_) async {
              await Future.delayed(const Duration(milliseconds: 1000));
              return {'item1', 'item2'};
            },
            itemBuilder: (item) {
              return MyoroMenuItem(iconTextButtonConfiguration: MyoroIconTextButtonConfiguration(iconConfiguration: MyoroIconConfiguration.fake()));
            },
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();

    // Tap the search button to trigger loading
    await tester.tap(find.byType(MyoroButton));

    // Wait for the loading state to appear
    await tester.pump();
    await tester.pump();
    await tester.pump();

    // Should show loading indicator
    expect(find.byType(MyoroCircularLoader), findsOneWidget);
  });

  testWidgets('MyoroSearchInput', (tester) async {
    await tester.pumpWidget(
      MyoroWidgetTester(
        child: InheritedProvider(
          create: (_) => MyoroSearchInputViewModel(MyoroSearchInputConfiguration.fake()),
          child: MyoroSearchInput(configuration: MyoroSearchInputConfiguration.fake()),
        ),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.byType(MyoroSearchInput), findsOneWidget);
  });
}
