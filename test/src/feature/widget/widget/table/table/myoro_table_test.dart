import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  MyoroTableConfiguration<String> createConfiguration() {
    return MyoroTableConfiguration(
      request: () => {faker.lorem.word()},
      columns: [MyoroTableColumn.fake()],
      rowBuilder: (item) => MyoroTableRow(cells: [Text(item)]),
    );
  }

  test('MyoroTable assertion case', () {
    expect(() => MyoroTable<String>(), throwsAssertionError);
    expect(
      () => MyoroTable<String>(
        controller: MyoroTableController(configuration: createConfiguration()),
        configuration: createConfiguration(),
      ),
      throwsAssertionError,
    );
  });

  testWidgets('MyoroTable didUpdateWidget', (tester) async {
    final configurationNotifier = ValueNotifier(createConfiguration());
    await tester.pumpWidget(
      MyoroWidgetTester(
        child: ValueListenableBuilder(
          valueListenable: configurationNotifier,
          builder: (_, configuration, _) {
            return MyoroTable<String>(configuration: configuration);
          },
        ),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.byType(MyoroTable<String>), findsOneWidget);
    configurationNotifier.value = createConfiguration();
    await tester.pumpAndSettle();
    configurationNotifier.dispose();
  });

  // testWidgets('MyoroTable all column types', (tester) async {
  //   final item = faker.lorem.word();
  //   var onTapDownExecuted = false;
  //   var onTapUpExecuted = false;

  //   await tester.pumpWidget(
  //     MyoroWidgetTester(
  //       child: MyoroTable<String>(
  //         configuration: MyoroTableConfiguration(
  //           request: () => {item},
  //           columns: const [
  //             MyoroTableColumn(
  //               widthConfiguration: MyoroTableColumnWidthConfiguration(
  //                 typeEnum: MyoroTableColumnWidthConfigurationEnum.fixed,
  //                 fixedWidth: 100,
  //               ),
  //               child: SizedBox.shrink(),
  //             ),
  //             MyoroTableColumn(
  //               widthConfiguration: MyoroTableColumnWidthConfiguration(
  //                 typeEnum: MyoroTableColumnWidthConfigurationEnum.intrinsic,
  //               ),
  //               child: SizedBox.shrink(),
  //             ),
  //             MyoroTableColumn(
  //               widthConfiguration: MyoroTableColumnWidthConfiguration(
  //                 typeEnum: MyoroTableColumnWidthConfigurationEnum.expanded,
  //               ),
  //               child: SizedBox.shrink(),
  //             ),
  //           ],
  //           rowBuilder: (item) {
  //             return MyoroTableRow(
  //               onTapDown: (_) => onTapDownExecuted = true,
  //               onTapUp: (_) => onTapUpExecuted = true,
  //               cells: [Text(item), Text(item), Text(item)],
  //             );
  //           },
  //         ),
  //       ),
  //     ),
  //   );
  //   await tester.pumpAndSettle();
  //   expect(find.byType(MyoroTable<String>), findsOneWidget);

  //   // Tap a row.
  //   await tester.tap(find.text(item).first);
  //   await tester.pumpAndSettle();
  //   expect(onTapDownExecuted, isTrue);
  //   expect(onTapUpExecuted, isTrue);
  // });

  testWidgets('MyoroTable no rows case', (tester) async {
    await tester.pumpWidget(
      MyoroWidgetTester(
        child: MyoroTable<String>(
          configuration: MyoroTableConfiguration(
            request: () => <String>{},
            columns: [MyoroTableColumn.fake()],
            rowBuilder: (item) => MyoroTableRow(cells: [Text(item)]),
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.byType(MyoroTable<String>), findsOneWidget);
    expect(find.text('No items were found!'), findsOneWidget);
  });

  testWidgets('MyoroTable error fetching rows case', (tester) async {
    final errorMessage = faker.lorem.sentence();
    await tester.pumpWidget(
      MyoroWidgetTester(
        child: MyoroTable<String>(
          configuration: MyoroTableConfiguration(
            request: () => throw Exception(errorMessage),
            columns: [MyoroTableColumn.fake()],
            rowBuilder: (item) => MyoroTableRow(cells: [Text(item)]),
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.byType(MyoroTable<String>), findsOneWidget);
    expect(find.text('Exception: $errorMessage'), findsOneWidget);
  });

  // testWidgets('MyoroTable incorrect amount of columns case', (tester) async {
  //   final configuration = createConfiguration();
  //   await tester.pumpWidget(
  //     MyoroWidgetTester(
  //       child: MyoroTable<String>(
  //         configuration: configuration]),
  //       ),
  //     ),
  //   );
  //   await tester.pumpAndSettle();
  //   await tester.takeException();
  //   await tester.takeException();
  //   await tester.takeException();
  // });
}
