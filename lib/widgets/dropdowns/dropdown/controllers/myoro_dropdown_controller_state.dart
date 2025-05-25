import 'package:flutter/foundation.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// State of [MyoroDropdownController].
class MyoroDropdownControllerState<T> {
  MyoroDropdownControllerState(bool enabled, Set<T> initiallySelectedItems)
    : enabledController = ValueNotifier(enabled),
      selectedItemsController = ValueNotifier(initiallySelectedItems);

  /// [ValueNotifier] controlling if the [_Dropdown] is enabled or not.
  final ValueNotifier<bool> enabledController;
  bool get enabled => enabledController.value;

  /// [ValueNotifier] controlling the selected items of the [_Dropdown].
  late final ValueNotifier<Set<T>> selectedItemsController;
  Set<T> get selectedItems => selectedItemsController.value;

  /// Dispose function.
  void dispose() {
    enabledController.dispose();
    selectedItemsController.dispose();
  }
}
