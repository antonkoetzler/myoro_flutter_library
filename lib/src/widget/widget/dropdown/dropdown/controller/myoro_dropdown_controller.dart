import 'package:flutter/foundation.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Controller of a dropdown.
abstract class MyoroDropdownController<T, C extends MyoroDropdownViewModel<T, MyoroDropdownConfiguration<T>>> {
  MyoroDropdownController(this._viewModel);

  /// View model of the controller.
  final C _viewModel;

  /// [_viewModel] getter.
  @protected
  C get viewModel => _viewModel;

  /// [ValueNotifier] controlling if the dropdown is selected or not.
  ValueNotifier<bool> get enabledNotifier => _viewModel.state.enabledNotifier;

  /// Returns whether or not the dropdown is enabled or not.
  bool get enabled => _viewModel.state.enabled;

  /// Dispose function.
  @mustCallSuper
  void dispose() => _viewModel.dispose();

  /// Toggles an item.
  void toggleItem(T item) => _viewModel.toggleItem(item);

  /// Toggles if the dropdown is enabled.
  void toggleEnabled([bool? enabled]) => _viewModel.toggleEnabled(enabled);

  /// Toggles if the menu is enabled.
  void toggleMenu() => _viewModel.toggleMenu();

  /// Clears the selected item(s).
  void clear() => _viewModel.clear();
}
