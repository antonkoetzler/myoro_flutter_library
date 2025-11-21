import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_search_input_state.dart';

/// View model of [MyoroSearchInput].
class MyoroSearchInputViewModel<T> {
  /// Default constructor.
  MyoroSearchInputViewModel(
    String label,
    String placeholder,
    MyoroSearchInputDropdownTypeEnum dropdownType,
    MyoroMenuItemBuilder<T> itemBuilder,
    MyoroSearchInputSelectedItemBuilder<T> selectedItemBuilder,
    MyoroSearchInputRequest<T> request,
    MyoroSearchInputOnChanged<T>? onChanged,
    MyoroSearchInputOnFieldSubmitted<T>? onFieldSubmitted,
    MyoroSearchInputValidation<T>? validation,
    FocusNode? focusNode,
  ) : _state = MyoroSearchInputState(
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
  final MyoroSearchInputState<T> _state;

  /// Dispose function.
  void dispose() {
    _state.dispose();
  }

  /// Listener of [MyoroSearchInputState.selectedItemController].
  void _selectedItemControllerListener() {
    final selectedItem = _state.selectedItem;
    _state.inputController.text = selectedItem != null ? _state.selectedItemBuilder(selectedItem) : kMyoroEmptyString;
    _state.onChanged?.call(selectedItem);
  }

  /// Listener of [MyoroSearchInputState.inputController].
  void _inputControllerListener() {
    final selectedItem = _state.selectedItem;
    final inputControllerText = _state.inputController.text;
    final selectedItemBuilder = _state.selectedItemBuilder;
    final requestController = _state.requestController;
    if (inputControllerText.isEmpty || selectedItem != null && selectedItemBuilder(selectedItem) == inputControllerText) {
      return;
    }
    requestController.fetch();
    _state.showing = true;
  }

  /// [_state] getter.
  MyoroSearchInputState<T> get state {
    return _state;
  }
}
