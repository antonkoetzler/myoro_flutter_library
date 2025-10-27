import 'package:flutter/foundation.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Multi selection dropdown controller.
class MyoroMultiSelectionDropdownController<T> extends MyoroSelectionDropdownController<T> {
  /// [ValueNotifier] of the selected items.
  final _selectedItemsController = ValueNotifier<Set<T>>(const {});

  /// Dispose function.
  @override
  void dispose() {
    _selectedItemsController.dispose();
    super.dispose();
  }

  /// [_selectedItemsController] getter.
  ValueNotifier<Set<T>> get selectedItemsController {
    return _selectedItemsController;
  }

  /// Getter of [_selectedItemsController] value.
  Set<T> get selectedItems {
    return _selectedItemsController.value;
  }
}
