import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

// TODO: Insert, select, get, update, delete.

/// Singleton that creates an offline SQLite database
/// for storing things such as shared preferences.
final class MyoroLocalDatabase {
  /// Instance of the SQLite database.
  static Database? _database;

  /// Instance of [MyoroLocalDatabase] so we don't recreate a
  /// [MyoroLocalDatabase] object everytime [instance] is called.
  static final _instance = MyoroLocalDatabase();

  /// Initializes the database.
  static Future<void> _initialize({
    /// Name of the database, i.e. providing 'Myoro Fitness' would create 'Myoro Fitness.db'.
    String? fileName,

    /// Alternative path to the database. Default is:
    ///
    /// Default location of the database is:
    /// - Windows: %USERPROFILE%\AppData\Local\[Your app's ID];
    /// - Linux: /home/$USER/.local/share/[Your app's ID].
    /// // TODO: Find out the other paths
    String? path,

    /// Table initialization. This should be raw SQL.
    String? tables,

    /// For debugging, used to always create a new .db instead of opening an
    /// existing database. WILL DELETE YOUR DATABASE IF USED, YOU ARE WARNED.
    bool cleanRun = false,
  }) async {
    // Path to the database on the computer.
    final formattedPath = join(
      path ?? (await getApplicationSupportDirectory()).path,
      fileName,
      '.db',
    );

    // Opening database at [formattedPath] or creating a new database there.
    if (cleanRun) {
      await _database?.close();
      deleteDatabase(formattedPath);
    }
    _database = await openDatabase(formattedPath);

    // Table initialization
    if (tables == null) return;
    _database!.execute(tables);
  }

  /// Closes the database.
  static void close() {
    _database?.close();
    _database = null;
  }

  /// Getter to get [_instance] to use [MyoroLocalDatabase]'s functions.
  static Future<MyoroLocalDatabase> get instance async {
    if (_database == null) await _initialize();
    return _instance;
  }
}
