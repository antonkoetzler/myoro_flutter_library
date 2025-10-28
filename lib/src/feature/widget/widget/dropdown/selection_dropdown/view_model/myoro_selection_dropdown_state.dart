part of 'myoro_selection_dropdown_view_model.dart';

/// State of [MyoroSelectionDropdownViewModel].
sealed class MyoroSelectionDropdownState<T> {
  /// Default constructor.
  MyoroSelectionDropdownState(
    this.dropdownType,
    this.items,
    ValueNotifier<bool>? showingController,
    this._itemBuilder,
    this.selectedItemBuilder,
  ) {
    _showingController = showingController ?? (_localShowingController ??= ValueNotifier(false));
  }

  /// [GlobalKey] of the selection dropdown's input.
  final _inputKey = GlobalKey();

  /// [TextEditingController] of the selection dropdown's input.
  final _inputController = TextEditingController();

  /// Dropdown type.
  final MyoroDropdownTypeEnum dropdownType;

  /// Items.
  final Set<T>? items;

  /// Item builder.
  final MyoroMenuItemBuilder<T> _itemBuilder;

  /// Selected item builder.
  final MyoroSelectionDropdownSelectedItemBuilder<T> selectedItemBuilder;

  /// Local showing controller.
  ValueNotifier<bool>? _localShowingController;

  /// [ValueNotifier] of showing controller.
  late final ValueNotifier<bool> _showingController;

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

  /// [_itemBuilder] getter.
  MyoroMenuItemBuilder<T> get itemBuilder {
    return (item) {
      final menuItem = _itemBuilder(item);
      menuItem.copyWith(
        onTapUp: (details) {
          menuItem.onTapUp?.call(details);

          switch (this) {
            case final MyoroMultiSelectionDropdownState<T> state:
              final selectedItems = Set<T>.from(state.selectedItems);
              state.selectedItems = selectedItems.contains(item)
                  ? (selectedItems..remove(item))
                  : (selectedItems..add(item));
              break;
            case final MyoroSingleSelectionDropdownState<T> state:
              final selectedItem = state.selectedItem;
              state.selectedItem = item == selectedItem ? null : null;
              break;
          }
        },
      );
      return menuItem;
    };
  }

  /// Setter of [showingController]'s value.
  set showing(bool value) {
    showingController.value = value;
  }
}
