import 'package:faker/faker.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

// TODO: Delete get instance and pass instance in callback

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  const fileName = 'myoro';
  const path = './';
  const dummyTableName = 'dummy';
  const dummyTableFooAttribute = 'foo';
  const createDummyTableSql = '''
    CREATE TABLE $dummyTableName (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      $dummyTableFooAttribute INTEGER
    )
  ''';
  const selectDummyTableQuery = 'SELECT name FROM sqlite_master WHERE type = \'table\' AND name = \'$dummyTableName\'';

  MyoroLocalDatabase getInstance() {
    return MyoroLocalDatabase.instance;
  }

  Future<Map<String, Object?>> insertDummyTableRow() async {
    final row = {dummyTableFooAttribute: faker.randomGenerator.boolean() ? 1 : 0};
    await getInstance().insert(dummyTableName, data: row);
    return row;
  }

  Future<void> runTest({String? path, bool createDummyTable = false, cleanRun = false, Function? callback}) async {
    await MyoroLocalDatabase.initialize(
      fileName: fileName,
      path: path,
      sql: createDummyTable ? createDummyTableSql : null,
      cleanRun: createDummyTable ? createDummyTable : cleanRun,
    );
    await callback?.call();
    await getInstance().close();
  }

  setUpAll(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(
      const MethodChannel('plugins.flutter.io/path_provider'),
      (methodCall) async {
        return methodCall.method == 'getApplicationSupportDirectory' ? path : null;
      },
    );
  });

  group('MyoroLocalDatabase.instance', () {
    test('MyoroLocalDatabase.instance not initialized assertion case', () {
      expect(() => getInstance(), throwsAssertionError);
    });
  });

  group('MyoroLocalDatabase.initialize', () {
    test('MyoroLocalDatabase.initialize with only required arguments case', () async {
      await runTest(
        callback: () {
          expect(() => getInstance(), returnsNormally);
        },
      );
    });

    test('MyoroLocalDatabase.initialize with path argument provided', () async {
      await runTest(
        path: path,
        callback: () {
          expect(() => getInstance(), returnsNormally);
        },
      );
    });

    test('MyoroLocalDatabase.initialize with sql and cleanRun arguments provided', () async {
      Future<void> testSqlArgument() async {
        await runTest(
          createDummyTable: true,
          callback: () async => expect((await getInstance().rawSqlQuery(selectDummyTableQuery)).isEmpty, isFalse),
        );
      }

      Future<void> testCleanRunArgument() async {
        // Assert that the table created in [testSqlArgument] still exists.
        await runTest(
          callback: () async {
            expect((await getInstance().rawSqlQuery(selectDummyTableQuery)).isEmpty, isFalse);
          },
        );

        // Assert that the table created in [testSqlArgument] is removed when cleanRun is true.
        await runTest(
          cleanRun: true,
          callback: () async {
            expect((await getInstance().rawSqlQuery(selectDummyTableQuery)).isEmpty, isTrue);
          },
        );
      }

      await testSqlArgument();
      await testCleanRunArgument();
    });
  });

  group('MyoroLocalDatabase.close', () {
    test('MyoroLocalDatabase.close', () async {
      await runTest();
      expect(() => getInstance(), throwsAssertionError);
    });
  });

  group('MyoroLocalDatabase.insert', () {
    test('MyoroLocalDatabase.insert', () async {
      await runTest(
        createDummyTable: true,
        callback: () async {
          await insertDummyTableRow();
          expect(await getInstance().get(dummyTableName), isNotNull);
        },
      );
    });
  });

  group('MyoroLocalDatabase.select', () {
    test('MyoroLocalDatabase.select with only required arguments provided', () async {
      await runTest(
        createDummyTable: true,
        callback: () async {
          expect(await getInstance().select(dummyTableName), isEmpty);
          await insertDummyTableRow();
          expect((await getInstance().select(dummyTableName)).length, 1);
        },
      );
    });

    test('MyoroLocalDatabase.select with where and whereArgs arguments provided', () async {
      await runTest(
        createDummyTable: true,
        callback: () async {
          expect(await getInstance().select(dummyTableName), isEmpty);
          await insertDummyTableRow();
          await insertDummyTableRow();
          expect((await getInstance().select(dummyTableName)).length, 2);
          expect((await getInstance().select(dummyTableName, where: 'id = ?', whereArgs: [1])).length, 1);
        },
      );
    });
  });

  group('MyoroLocalDatabase.get', () {
    test('MyoroLocalDatabase with only required arguments provided', () async {
      await runTest(
        createDummyTable: true,
        callback: () async {
          expect(await getInstance().get(dummyTableName), isNull);
          await insertDummyTableRow();
          expect(await getInstance().get(dummyTableName), isNotNull);
        },
      );
    });

    test('MyoroLocalDatabase with where and whereArgs provided', () async {
      await runTest(
        createDummyTable: true,
        callback: () async {
          await insertDummyTableRow();
          expect(await getInstance().get(dummyTableName, where: 'id = ?', whereArgs: [100]), isNull);
          expect(await getInstance().get(dummyTableName, where: 'id = ?', whereArgs: [1]), isNotNull);
        },
      );
    });
  });

  group('MyoroLocalDatabase.update', () {
    test('MyoroLocalDatabase.update with only required arguments provided', () async {
      await runTest(
        createDummyTable: true,
        callback: () async {
          final rowInserted = await insertDummyTableRow();
          final rowInsertedFooValue = rowInserted[dummyTableFooAttribute];
          await getInstance().update(dummyTableName, data: {dummyTableFooAttribute: rowInsertedFooValue == 1 ? 0 : 1});
          expect((await getInstance().get(dummyTableName))![dummyTableFooAttribute] == rowInsertedFooValue, isFalse);
        },
      );
    });

    test('MyoroLocalDatabase.update with where and whereArgs provided', () async {
      await runTest(
        createDummyTable: true,
        callback: () async {
          final row1 = await insertDummyTableRow();
          final row1FooValue = row1[dummyTableFooAttribute];
          final row2 = await insertDummyTableRow();
          final row2FooValue = row2[dummyTableFooAttribute];
          await getInstance().update(
            dummyTableName,
            data: {dummyTableFooAttribute: row1FooValue == 1 ? 0 : 1},
            where: 'id = ?',
            whereArgs: [1],
          );
          expect(
            (await getInstance().get(dummyTableName, where: 'id = ?', whereArgs: [1]))![dummyTableFooAttribute] ==
                row1FooValue,
            isFalse,
          );
          expect(
            (await getInstance().get(dummyTableName, where: 'id = ?', whereArgs: [2]))![dummyTableFooAttribute] ==
                row2FooValue,
            isTrue,
          );
        },
      );
    });
  });

  group('MyoroLocalDatabase.delete', () {
    test('MyoroLocalDatabase.delete with only required arguments provided', () async {
      await runTest(
        createDummyTable: true,
        callback: () async {
          await insertDummyTableRow();
          await insertDummyTableRow();
          await getInstance().delete(dummyTableName);
          expect(await getInstance().get(dummyTableName), isNull);
        },
      );
    });

    test('MyoroLocalDatabase.delete with where and whereArgs provided', () async {
      await runTest(
        createDummyTable: true,
        callback: () async {
          const minimumAmountOfRows = 2;
          final rowsToCreate = faker.randomGenerator.integer(10, min: minimumAmountOfRows);
          for (int i = 0; i < rowsToCreate; i++) {
            await insertDummyTableRow();
          }
          await getInstance().delete(
            dummyTableName,
            where: 'id = ?',
            whereArgs: [faker.randomGenerator.integer(rowsToCreate, min: minimumAmountOfRows)],
          );
          expect((await getInstance().select(dummyTableName)).length, rowsToCreate - 1);
        },
      );
    });
  });

  group('MyoroLocalDatabase.executeSql and MyoroLocalDatabase.rawSqlQuery', () {
    test('MyoroLocalDatabase.executeSql and MyoroLocalDatabase.rawSqlQuery test case', () async {
      await runTest(
        cleanRun: true,
        callback: () async {
          getInstance().executeSql(createDummyTableSql);
          expect((await getInstance().rawSqlQuery(selectDummyTableQuery)).isEmpty, isFalse);
        },
      );
    });
  });
}
