import 'package:flutter/foundation.dart';

/// Abstract dropdown controller.
abstract class MyoroDropdownController<T> {
  /// Default constructor.
  MyoroDropdownController({bool showing = false}) : _showingController = ValueNotifier(showing);

  /// [ValueNotifier] controlling if the dropdown is being displayed or not.
  final ValueNotifier<bool> _showingController;

  /// Dispose function.
  @mustCallSuper
  void dispose() {
    _showingController.dispose();
  }

  /// Enables the dropdown.
  void enableDropdown() {
    _showingController.value = true;
  }

  /// Disables the dropdown.
  void disableDropdown() {
    _showingController.value = false;
  }

  /// Toggles the dropdown.
  void toggleDropdown() {
    _showingController.value = !_showingController.value;
  }

  /// Toggles an item in the dropdown.
  void toggleItem(T item);

  /// Clears all selected items.
  void clear();

  /// [_showingController] getter.
  ValueNotifier<bool> get showingController {
    return _showingController;
  }

  /// Getter of [_showingController]'s value.
  bool get showing {
    return _showingController.value;
  }
}
