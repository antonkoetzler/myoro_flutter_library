import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Controller of an input dropdown.
abstract class MyoroInputDropdownController<
  T,
  CONFIGURATION extends MyoroInputDropdownConfiguration<T, MyoroMenuConfiguration<T>>,
  MENU_CONTROLLER extends MyoroMenuController<T, MyoroMenuViewModel<T, MyoroMenuConfiguration<T>>>,
  VIEW_MODEL extends MyoroInputDropdownViewModel<
    T,
    CONFIGURATION,
    MyoroDropdownController<
      T,
      MyoroDropdownConfiguration<T, MyoroMenuConfiguration<T>>,
      MENU_CONTROLLER,
      MyoroDropdownViewModel<T, MyoroDropdownConfiguration<T, MyoroMenuConfiguration<T>>, MENU_CONTROLLER>
    >
  >
> {
  MyoroInputDropdownController(this.viewModel);

  /// View model.
  @protected
  final VIEW_MODEL viewModel;

  /// Dispose function.
  @mustCallSuper
  void dispose() {
    viewModel.dispose();
  }

  /// Toggles the dropdown.
  void toggleDropdown() {
    viewModel.toggleDropdown();
  }

  /// Enables the dropdown.
  void enableDropdown() {
    viewModel.enableDropdown();
  }

  /// Disables the dropdown.
  void disableDropdown() {
    viewModel.disableDropdown();
  }

  /// Toggles if the dropdown is enabled or not.
  void toggleEnabled([bool? enabled]) {
    viewModel.state.enabledController.value = enabled ?? !viewModel.state.enabledController.value;
  }

  /// Getter of the input controller.
  TextEditingController get inputController {
    return viewModel.state.inputController;
  }

  /// Getter of the dropdown's configuration.
  CONFIGURATION get configuration {
    return viewModel.state.configuration;
  }

  /// Getter of the dropdown's menu controller.
  MENU_CONTROLLER get menuController {
    return viewModel.state.dropdownController.menuController;
  }

  /// Getter of the dropdown's enabled controller.
  ValueNotifier<bool> get enabledController {
    return viewModel.state.enabledController;
  }

  /// Getter of whether the dropdown is enabled or not.
  bool get enabled {
    return viewModel.state.enabled;
  }
}
