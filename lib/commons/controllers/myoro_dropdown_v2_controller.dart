import 'package:flutter/foundation.dart';

/// Abstract controller of dropdowns.
class MyoroDropdownV2Controller<T> {
  /// [ValueNotifier] used to keep track of the selected items.
  final _selectedItemsNotifier = ValueNotifier<List<T>>([]);

  /// Disposes disposable variables such as [_selectedItemsNotifier].
  void dispose() {
    _selectedItemsNotifier.dispose();
  }

  ValueNotifier<List<T>> get selectedItemsNotifier => _selectedItemsNotifier;
  List<T> get selectedItems => _selectedItemsNotifier.value;
}
