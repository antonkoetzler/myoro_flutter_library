import 'package:faker/faker.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  Future<void> testCase(
    WidgetTester tester,
    Function() callback,
    MyoroMenuConfiguration<String> Function(MyoroMenuConfiguration<String>) configurationBuilder,
  ) async {
    await tester.pumpWidget(
      MyoroWidgetTester(
        child: MyoroMenu<String>(
          configuration: configurationBuilder(
            MyoroMenuConfiguration(
              request: () => {},
              itemBuilder: (item) => MyoroMenuItem(textConfiguration: MyoroTextConfiguration(text: item)),
            ),
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.byType(MyoroMenu<String>), findsOneWidget);
    await callback();
  }

  testWidgets('MyoroMenu error case', (tester) async {
    await testCase(
      tester,
      () => expect(find.text('Error getting items.'), findsOneWidget),
      (configuration) => configuration.copyWith(request: () => throw Exception()),
    );
  });

  testWidgets('MyoroMenu success case', (tester) async {
    final item = faker.lorem.word();

    await testCase(
      tester,
      () => expect(find.text(item), findsOneWidget),
      (configuration) => configuration.copyWith(request: () => {item}),
    );
  });

  testWidgets('MyoroMenu with MyoroMenuItem.builder', (tester) async {
    final item = faker.lorem.word();

    var onTapDownExecuted = false;
    var onTapUpExecuted = false;

    await testCase(
      tester,
      () async {
        final itemFinder = find.text(item);
        expect(itemFinder, findsOneWidget);
        await tester.tap(itemFinder);
        await tester.pumpAndSettle();
        expect(onTapDownExecuted, isTrue);
        expect(onTapUpExecuted, isTrue);
      },
      (configuration) => configuration.copyWith(
        request: () => {item},
        itemBuilder: (item) {
          return MyoroMenuItem(
            builder: (_, _) => Text(item),
            onTapDown: (_) => onTapDownExecuted = true,
            onTapUp: (_) => onTapUpExecuted = true,
          );
        },
      ),
    );
  });

  testWidgets('MyoroMenu with MyoroMenuConfiguration.searchCallback provided', (tester) async {
    await testCase(
      tester,
      () => expect(find.byType(MyoroInput), findsOneWidget),
      (configuration) => configuration.copyWith(searchCallback: (_, _) => {}),
    );
  });
}
