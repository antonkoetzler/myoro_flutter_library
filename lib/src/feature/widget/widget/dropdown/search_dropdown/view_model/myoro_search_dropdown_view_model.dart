import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_search_dropdown_state.dart';

/// View model of [MyoroSearchDropdown].
class MyoroSearchDropdownViewModel<T> {
  /// Default constructor.
  MyoroSearchDropdownViewModel(
    String label,
    String placeholder,
    MyoroSearchDropdownDropdownTypeEnum dropdownType,
    MyoroMenuItemBuilder<T> itemBuilder,
    MyoroSearchDropdownSelectedItemBuilder<T> selectedItemBuilder,
    MyoroSearchDropdownRequest<T> request,
    MyoroSearchDropdownOnChanged<T>? onChanged,
    MyoroSearchDropdownOnFieldSubmitted<T>? onFieldSubmitted,
    MyoroSearchDropdownValidation<T>? validation,
    FocusNode? focusNode,
  ) : _state = MyoroSearchDropdownState(
        label,
        placeholder,
        dropdownType,
        itemBuilder,
        selectedItemBuilder,
        request,
        onChanged,
        onFieldSubmitted,
        validation,
        focusNode,
      ) {
    _state
      ..selectedItemController.addListener(_selectedItemControllerListener)
      ..inputController.addListener(_inputControllerListener);
  }

  /// State.
  final MyoroSearchDropdownState<T> _state;

  /// Dispose function.
  void dispose() {
    _state.dispose();
  }

  /// Listener of [MyoroSearchDropdownState.selectedItemController].
  void _selectedItemControllerListener() {
    final selectedItem = _state.selectedItem;
    _state.inputController.text = selectedItem != null ? _state.selectedItemBuilder(selectedItem) : kMyoroEmptyString;
    _state.onChanged?.call(selectedItem);
  }

  /// Listener of [MyoroSearchDropdownState.inputController].
  void _inputControllerListener() {
    final selectedItem = _state.selectedItem;
    final inputControllerText = _state.inputController.text;
    final selectedItemBuilder = _state.selectedItemBuilder;
    final requestController = _state.requestController;
    if (inputControllerText.isEmpty ||
        selectedItem != null && selectedItemBuilder(selectedItem) == inputControllerText) {
      return;
    }
    requestController.fetch();
    _state.showing = true;
  }

  /// [_state] getter.
  MyoroSearchDropdownState<T> get state {
    return _state;
  }
}
