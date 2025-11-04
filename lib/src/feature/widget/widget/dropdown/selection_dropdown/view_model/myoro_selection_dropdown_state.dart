part of 'myoro_selection_dropdown_view_model.dart';

/// State of [MyoroSelectionDropdownViewModel].
sealed class MyoroSelectionDropdownState<T> {
  /// Default constructor.
  MyoroSelectionDropdownState(
    this.label,
    this.enabled,
    this.dropdownType,
    this.items,
    ValueNotifier<bool>? showingController,
    MyoroMenuItemBuilder<T> itemBuilder,
    this.selectedItemBuilder,
  ) {
    _showingController = showingController ?? (_localShowingController ??= ValueNotifier(false));

    this.itemBuilder = (item) {
      final menuItem = itemBuilder(item);
      return menuItem.copyWith(
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
              if (item == selectedItem) {
                // Only allow deselection if allowDeselection is true
                if (state.allowDeselection) {
                  state.selectedItem = null;
                }
              } else {
                state.selectedItem = item;
              }
              if (state.selectedItem != null) state.showing = false;
              break;
          }
        },
      );
    };
  }

  /// Label of the dropdown.
  final String label;

  /// If the dropdown is enabled.
  final bool enabled;

  /// [GlobalKey] of the selection dropdown's input.
  final _inputKey = GlobalKey();

  /// [TextEditingController] of the selection dropdown's input.
  final _inputController = TextEditingController();

  /// Dropdown type.
  final MyoroDropdownTypeEnum? dropdownType;

  /// Items.
  final Set<T>? items;

  /// Item builder.
  late final MyoroMenuItemBuilder<T> itemBuilder;

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

  /// Setter of [showingController]'s value.
  set showing(bool value) {
    showingController.value = value;
  }
}
