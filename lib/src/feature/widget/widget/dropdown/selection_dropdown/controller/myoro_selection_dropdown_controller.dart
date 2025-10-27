import 'package:flutter/foundation.dart';

/// Selection dropdown controller.
abstract class MyoroSelectionDropdownController<T> {
  /// [ValueNotifier] controlling if the dropdown is being shown.
  final _showingController = ValueNotifier<bool>(false);

  /// Dispose function.
  @mustCallSuper
  void dispose() {
    _showingController.dispose();
  }

  /// Toggles the dropdown.
  void toggleDropdown() {
    _showingController.value = !_showingController.value;
  }

  /// Shows the dropdown.
  void showDropdown() {
    _showingController.value = true;
  }

  /// Hides the dropdown.
  void hideDropdown() {
    _showingController.value = false;
  }

  /// [_showingController] getter.
  ValueNotifier<bool> get showingController {
    return _showingController;
  }

  /// Getter of [_showingController] value.
  bool get showing {
    return _showingController.value;
  }
}
