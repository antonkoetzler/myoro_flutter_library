import 'package:flutter/foundation.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Controller of [MyoroSingularDropdown].
final class MyoroSingularDropdownController<T> {
  /// [ValueNotifier] controlling if the dropdown is being shown.
  final _displayingDropdownNotifier = ValueNotifier<bool>(false);

  /// Disposes [ValueNotifier]s.
  void dispose() {
    _displayingDropdownNotifier.dispose();
  }

  ValueNotifier<bool> get displayingDropdownNotifier => _displayingDropdownNotifier;
  bool get displayingDropdown => _displayingDropdownNotifier.value;
}
