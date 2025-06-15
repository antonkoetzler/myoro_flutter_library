import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Interface of [MyoroGroupRadioController].
abstract interface class MyoroGroupRadioInterface {
  /// Toggles one of the radios and manages the state of the other radios afterwards.
  void enable(String key);

  /// Returns the map with all of the radios disabled ([false]).
  MyoroGroupRadioItems get disabledItems;

  /// Returns the key that is enabled.
  String get enabledKey;

  /// Alias for [ValueNotifier.value].
  MyoroGroupRadioItems get radios;
}
