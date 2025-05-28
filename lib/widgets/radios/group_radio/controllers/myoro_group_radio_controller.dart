import 'package:flutter/foundation.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [ValueNotifier] for [MyoroGroupRadio].
class MyoroGroupRadioController extends ValueNotifier<MyoroGroupRadioItems> implements MyoroGroupRadioInterface {
  /// Checks if there the [MyoroGroupRadioItems] provided breaks the logic of the radios:
  /// 1. Radios cannot be empty;
  /// 2. Only one of the radios may be true.
  static bool radiosAreValid(MyoroGroupRadioItems radios) {
    int counter = 0;
    radios.forEach((_, bool value) => counter += value ? 1 : 0);
    return counter == 1;
  }

  MyoroGroupRadioController(super._value) : assert(radiosAreValid(_value));

  /// Toggles one of the radios and manages the state of the other radios afterwards.
  @override
  void enable(String key) {
    value = disabledItems..update(key, (bool value) => true);
  }

  /// Returns the map with all of the radios disabled ([false]).
  @override
  MyoroGroupRadioItems get disabledItems {
    return {for (final MapEntry<String, bool> entry in value.entries) entry.key: false};
  }

  /// Returns the key that is enabled.
  @override
  String get enabledKey {
    return radios.keys.firstWhere((String key) => radios[key]!);
  }

  /// Alias for [ValueNotifier.value].
  @override
  MyoroGroupRadioItems get radios {
    return value;
  }
}
