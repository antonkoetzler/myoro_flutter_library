import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

/// Singleton that creates an offline SQLite database
/// for storing things such as shared preferences.
///
/// A note on [where] & [whereArgs] arguments.
/// - [where]: SQL syntax placeholders of the condition you are creating, i.e. 'foo = ?', 'foo = ? AND bar = ? OR baz = ?';
/// - [whereArgs]: List of the values of the placeholders, i.e. ['foo'], ['foo', true, 5];
class MyoroLocalDatabase {
  /// Instance of [MyoroLocalDatabase] so we don't recreate a
  /// [MyoroLocalDatabase] object everytime [instance] is called.
  static final _instance = MyoroLocalDatabase();
  static MyoroLocalDatabase get instance {
    assert(
      _database != null,
      '[MyoroLocalDatabase]: Database not initialized; please call [MyoroLocalDatabase.initialize].',
    );
    return _instance;
  }

  /// Instance of the SQLite database.
  static Database? _database;

  /// Initializes the database.
  static Future<void> initialize({
    /// Name of the database, i.e. providing 'myoro_matchup' would create 'myoro_matchup.db'.
    required String fileName,

    /// Alternative path to the database.
    String? path,

    /// Raw SQL to execute.
    String? sql,

    /// For debugging, used to always create a new .db instead of opening an
    /// existing database. WILL DELETE YOUR DATABASE IF USED; YOU ARE WARNED.
    bool cleanRun = false,
  }) async {
    // Initialize SQLite FFI.
    databaseFactory = databaseFactoryFfi;

    // Path to the database on the computer.
    final formattedPath = join(path ?? (await getApplicationSupportDirectory()).path, '$fileName.db');

    // Opening database at [formattedPath] or creating a new database there.
    if (cleanRun) deleteDatabase(formattedPath);
    _database = await openDatabase(formattedPath);

    // Table initialization
    if (sql != null) {
      _database!.execute(sql);
    }
  }

  /// Closes the database.
  Future<void> close() async {
    await _database?.close();
    _database = null;
  }

  /// INSERT operation. Returns the ID of the newly created row or throws if unsuccessful.
  Future<int> insert(String tableName, {required Map<String, dynamic> data}) async {
    return await _database!.insert(tableName, data);
  }

  /// SELECT operation. Returns the list of a given query.
  Future<List<Map<String, dynamic>>> select(String tableName, {String? where, List<Object?>? whereArgs}) async {
    return await _database!.query(tableName, where: where, whereArgs: whereArgs);
  }

  /// Get operation. Selects the first row of a [select] operation or null if the result of the [select] call is empty.
  Future<Map<String, dynamic>?> get(String tableName, {String? where, List<Object?>? whereArgs}) async {
    final rows = await select(tableName, where: where, whereArgs: whereArgs);
    return rows.isEmpty ? null : rows.first;
  }

  /// UPDATE operation.
  ///
  /// Returns the number of changes made.
  Future<int> update(
    String tableName, {
    required Map<String, dynamic> data,
    String? where,
    List<Object?>? whereArgs,
  }) async {
    return await _database!.update(tableName, data, where: where, whereArgs: whereArgs);
  }

  /// DELETE operation.
  ///
  /// Returns the number of rows affected.
  Future<int> delete(String tableName, {String? where, List<Object?>? whereArgs}) async {
    return await _database!.delete(tableName, where: where, whereArgs: whereArgs);
  }

  /// Function to execute raw SQL.
  Future<void> executeSql(String sql) async {
    return await _database!.execute(sql);
  }

  /// Function to execute a raw query and return the result of the query.
  Future<List<Map<String, Object?>>> rawSqlQuery(String sql, [List<Object?>? arguments]) async {
    return await _database!.rawQuery(sql, arguments);
  }
}
