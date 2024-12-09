import 'package:shared_preferences/shared_preferences.dart';

/// Wrapper API to make the shared_preferences package smoother to use.
///
/// A singleton class that used the [SharedPreferences] instance; must be initialized.
final class MyoroSharedPreferences {
  /// Singleton [SharedPreferences] instance.
  static SharedPreferences? _instance;

  /// Initializes the [SharedPreferences] object.
  static Future<SharedPreferences> initialize() async {
    _instance = await SharedPreferences.getInstance();
    return _instance!;
  }

  /// Getter to get [_instance] to use [MyoroSharedPreferences] functions
  static SharedPreferences get instance {
    assert(
      _instance != null,
      '[MyoroSharedPreferences]: Not initialized; please call [MyoroSharedPreferences.initialize].',
    );
    return _instance!;
  }
}
