import 'package:flutter/foundation.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Single selection dropdown controller.
class MyoroSingleSelectionDropdownController<T> extends MyoroSelectionDropdownController<T> {
  /// [ValueNotifier] of the selected items.
  final _selectedItemController = ValueNotifier<T?>(null);

  /// Dispose function.
  @override
  void dispose() {
    _selectedItemController.dispose();
    super.dispose();
  }

  /// [_selectedItemController] getter.
  ValueNotifier<T?> get selectedItemController {
    return _selectedItemController;
  }

  /// Getter of [_selectedItemController] value.
  T? get selectedItem {
    return _selectedItemController.value;
  }
}
