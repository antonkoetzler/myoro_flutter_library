import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

const _dummyTableName = 'hello_world';
const _dummyTableIdAttribute = 'id';
const _dummyTableFooAttribute = 'foo';

MyoroLocalDatabase get _instance => MyoroLocalDatabase.instance;

final _row = {_dummyTableFooAttribute: faker.lorem.word()};

void main() {
  group('[MyoroLocalDatabase.instance/initialize]', () {
    test(
      '[instance]: Assertion error case',
      () {
        expect(() => _instance, throwsAssertionError);
      },
    );

    test(
      '[instance]: Success case',
      () async {
        await _createDatabase();
        expect(() => _instance, returnsNormally);
        _closeDatabase();
      },
    );
  });

  group('[MyoroLocalDatabase.insert/select/get/update/delete]', () {
    setUp(() async {
      await _createDatabase();
    });

    tearDown(() {
      _closeDatabase();
    });

    test('[MyoroLocalDatabase.insert]', () async {
      final id = await _insert();
      expect(await _get(), {_dummyTableIdAttribute: id, ..._row});
    });

    test('[MyoroLocalDatabase.select]', () async {
      expect((await _select()).length, 0);

      final List<Map<String, dynamic>> rows = List.generate(
        faker.randomGenerator.integer(10, min: 1),
        (int index) => {
          _dummyTableFooAttribute: '$index: ${faker.lorem.word()}',
        },
      );
      for (final row in rows) {
        await _insert(row);
      }

      expect((await _select()).length, rows.length);
      final filteredRows = await _select(
        '$_dummyTableFooAttribute = ?',
        [
          rows[faker.randomGenerator.integer(rows.length)]
              [_dummyTableFooAttribute]
        ],
      );
      expect(filteredRows.length, 1);
    });

    test('[MyoroLocalDatabase.get]', () async {
      final row = {_dummyTableFooAttribute: faker.lorem.word()};
      expect(await _get(), isNull);
      await _insert(row);
      expect(await _get(), isNotNull);
      expect(
        await _get(
          '$_dummyTableFooAttribute = ?',
          [faker.randomGenerator.string(100)],
        ),
        isNull,
      );
      expect(
        await _get(
          '$_dummyTableFooAttribute = ?',
          [row[_dummyTableFooAttribute]],
        ),
        isNotNull,
      );
    });

    test('[MyoroLocalDatabase.update]', () async {
      await _insert();
      final newFooAttribute = faker.randomGenerator.string(100);
      expect(
        await _update(
          {_dummyTableFooAttribute: newFooAttribute},
          '$_dummyTableFooAttribute = ?',
          [_row[_dummyTableFooAttribute]],
        ),
        1,
      );
      expect((await _get())![_dummyTableFooAttribute], newFooAttribute);
    });

    test('[MyoroLocalDatabase.delete]', () async {
      await _insert();
      final rowId = (await _get())![_dummyTableIdAttribute];

      int rowsAffected = await _delete(
        '$_dummyTableIdAttribute = ?',
        [faker.randomGenerator.string(100)],
      );
      expect(rowsAffected, 0);

      rowsAffected = await _delete(
        '$_dummyTableIdAttribute = ?',
        [rowId],
      );
      expect(rowsAffected, 1);
    });
  });
}

Future<void> _createDatabase() async {
  await MyoroLocalDatabase.initialize(
    path: './',
    fileName: 'myoro_local_database_test',
    sql: '''
      CREATE TABLE IF NOT EXISTS $_dummyTableName(
        $_dummyTableIdAttribute INTEGER PRIMARY KEY AUTOINCREMENT,
        $_dummyTableFooAttribute string
      );
      DELETE FROM $_dummyTableName;
    ''',
  );
}

void _closeDatabase() {
  _instance.close();
}

Future<int> _insert([Map<String, dynamic>? row]) async {
  return await _instance.insert(
    _dummyTableName,
    data: row ?? _row,
  );
}

Future<Map<String, dynamic>?> _get([
  String? where,
  List<Object?>? whereArgs,
]) async {
  return await _instance.get(
    _dummyTableName,
    where: where,
    whereArgs: whereArgs,
  );
}

Future<List<Map<String, dynamic>>> _select([
  String? where,
  List<Object?>? whereArgs,
]) async {
  return await _instance.select(
    _dummyTableName,
    where: where,
    whereArgs: whereArgs,
  );
}

Future<int> _update(
  Map<String, dynamic> data, [
  String? where,
  List<Object?>? whereArgs,
]) async {
  return await _instance.update(
    _dummyTableName,
    data: data,
    where: where,
    whereArgs: whereArgs,
  );
}

Future<int> _delete(
  String? where,
  List<Object?> whereArgs,
) async {
  return await _instance.delete(
    _dummyTableName,
    where: where,
    whereArgs: whereArgs,
  );
}
