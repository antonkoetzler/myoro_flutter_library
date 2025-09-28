import 'package:flutter/foundation.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Abstract controller of a dropdown.
abstract class MyoroDropdownController<
  T,
  C extends MyoroDropdownConfiguration<T, MyoroMenuConfiguration<T>>,
  V extends MyoroDropdownViewModel<T, C>
> {
  MyoroDropdownController({required C configuration, required V viewModel})
    : _viewModel = viewModel;

  /// View model.
  final V _viewModel;

  /// [_viewModel] getter.
  @protected
  V get viewModel => _viewModel;

  /// Dispose function.
  @mustCallSuper
  void dispose() {
    _viewModel.dispose();
  }

  /// Toggle display of the dropdown.
  void toggle() {
    _viewModel.toggle();
  }

  /// Enables the dropdown.
  void enable() {
    _viewModel.enable();
  }

  /// Disables the dropdown.
  void disable() {
    _viewModel.disable();
  }

  /// Configuration getter.
  C get configuration {
    return _viewModel.state.configuration;
  }

  /// Configuration setter.
  set configuration(C configuration) {
    _viewModel.configuration = configuration;
  }
}
