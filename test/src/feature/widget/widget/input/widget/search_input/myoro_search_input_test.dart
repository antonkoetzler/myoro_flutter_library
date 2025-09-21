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
            inputConfiguration: const MyoroInputConfiguration(),
            request: (_) async {
              await Future.delayed(const Duration(milliseconds: 500));
              return {};
            },
            itemBuilder: (item) => MyoroMenuItem(
              iconTextButtonConfiguration: MyoroIconTextButtonConfiguration(
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

  testWidgets('MyoroSearchInput', (tester) async {
    await tester.pumpWidget(
      MyoroWidgetTester(
        child: InheritedProvider(
          create: (_) => MyoroSearchInputViewModel(),
          child: MyoroSearchInput(createViewModel: false, configuration: MyoroSearchInputConfiguration.fake()),
        ),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.byType(MyoroSearchInput), findsOneWidget);
  });
}
