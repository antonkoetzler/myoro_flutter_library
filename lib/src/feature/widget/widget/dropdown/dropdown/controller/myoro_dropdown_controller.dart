import 'package:flutter/foundation.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Abstract controller of a dropdown.
abstract class MyoroDropdownController<
  T,
  C extends MyoroDropdownConfiguration<T, MyoroMenuConfiguration<T>>,
  MENU_CONTROLLER extends MyoroMenuController<T, MyoroMenuViewModel<T, MyoroMenuConfiguration<T>>>,
  V extends MyoroDropdownViewModel<T, C, MENU_CONTROLLER>
> {
  MyoroDropdownController({required C configuration, required V viewModel}) : _viewModel = viewModel;

  /// View model.
  final V _viewModel;

  /// Dispose function.
  @mustCallSuper
  void dispose() {
    _viewModel.dispose();
  }

  /// Toggle display of the dropdown.
  void toggleDropdown() {
    _viewModel.toggle();
  }

  /// Enables the dropdown.
  void enableDropdown() {
    _viewModel.enable();
  }

  /// Disables the dropdown.
  void disableDropdown() {
    _viewModel.disable();
  }

  /// Toggles an item in the dropdown.
  void toggleItem(T item) {
    _viewModel.state.menuController.toggleItem(item);
  }

  /// Clears all selected items.
  void clear() {
    _viewModel.state.menuController.clear();
  }

  /// [_viewModel] getter.
  @protected
  V get viewModel => _viewModel;

  /// Style of the dropdown (if it is set).
  MyoroMenuStyle? get menuStyle {
    return _viewModel.menuStyleInitialized ? _viewModel.menuStyle : null;
  }

  /// Configuration getter.
  C get configuration {
    return _viewModel.state.configuration;
  }

  /// [MyoroDropdownState.showingController] getter.
  ValueNotifier<bool> get showingController {
    return _viewModel.state.showingController;
  }

  /// Getter of [_viewModel.state.showingController]'s value.
  bool get showing {
    return _viewModel.state.showing;
  }

  /// Getter of the dropdown's menu controller.
  MENU_CONTROLLER get menuController {
    return _viewModel.state.menuController;
  }

  /// Configuration setter.
  set configuration(C configuration) {
    _viewModel.configuration = configuration;
  }
}
