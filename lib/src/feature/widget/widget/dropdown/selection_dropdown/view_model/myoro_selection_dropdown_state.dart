import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_multi_selection_dropdown_state.dart';
part 'myoro_single_selection_dropdown_state.dart';

/// State of [MyoroSelectionDropdownViewModel].
sealed class MyoroSelectionDropdownState<T> {
  /// Default constructor.
  MyoroSelectionDropdownState(
    this.label,
    this.enabled,
    this.showSearchBar,
    this.dropdownType,
    this.items,
    ValueNotifier<bool>? showingController,
    this.itemBuilder,
    this.selectedItemBuilder,
  ) {
    _showingController = showingController ?? (_localShowingController ??= ValueNotifier(false));
  }

  /// Label of the dropdown.
  String label;

  /// If the dropdown is enabled.
  bool enabled;

  /// Whether or not a searchbar should be provided when the dropdown is opened.
  bool showSearchBar;

  /// Dropdown type.
  MyoroDropdownTypeEnum? dropdownType;

  /// Items.
  Set<T>? items;

  /// Local showing controller.
  ValueNotifier<bool>? _localShowingController;

  /// [ValueNotifier] of showing controller.
  late ValueNotifier<bool> _showingController;

  /// Item builder.
  MyoroMenuItemBuilder<T> itemBuilder;

  /// Selected item builder.
  MyoroSelectionDropdownSelectedItemBuilder<T> selectedItemBuilder;

  /// [GlobalKey] of the selection dropdown's input.
  final _inputKey = GlobalKey();

  /// [TextEditingController] of the selection dropdown's input.
  final _inputController = TextEditingController();

  /// Dispose function.
  @mustCallSuper
  void dispose() {
    _inputController.dispose();
    _localShowingController?.dispose();
  }

  /// [_inputKey] getter.
  GlobalKey get inputKey {
    return _inputKey;
  }

  /// [_inputController] getter.
  TextEditingController get inputController {
    return _inputController;
  }

  /// [_showingController] getter.
  ValueNotifier<bool> get showingController {
    return _showingController;
  }

  /// Getter of [showingController]'s value.
  bool get showing {
    return showingController.value;
  }

  /// Setter of the showing controller.
  set showingController(ValueNotifier<bool>? showingController) {
    if (showingController == null) {
      _showingController = _localShowingController ??= ValueNotifier(showing);
    } else {
      _localShowingController?.dispose();
      _localShowingController = null;
      _showingController = showingController;
    }
  }

  /// Setter of [showingController]'s value.
  set showing(bool value) {
    showingController.value = value;
  }

  /// [_inputController] setter.
  set input(String value) {
    _inputController.text = value;
  }
}
