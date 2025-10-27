part of '../bundle/myoro_selection_dropdown_bundle.dart';

/// Multi selection dropdown.
class MyoroMultiSelectionDropdown<T> extends StatelessWidget {
  /// Default value of [style].
  static const styleDefaultValue = MyoroMenuStyle();

  /// Default value of [dropdownType].
  static const dropdownTypeDefaultValue = MyoroDropdownTypeEnum.expanding;

  /// Default constructor.
  const MyoroMultiSelectionDropdown({
    super.key,
    this.style = styleDefaultValue,
    this.dropdownType = dropdownTypeDefaultValue,
    this.items,
    required this.itemBuilder,
    this.showingController,
    this.initiallySelectedItems,
    this.selectedItemsController,
    this.onChanged,
  }) : assert(
         !(initiallySelectedItems != null && selectedItemsController != null),
         '[MyoroMultiSelectionDropdown<$T>]: [initiallySelectedItems] and [selectedItemsController] cannot be provided together.',
       );

  /// Style.
  final MyoroMenuStyle style;

  /// Dropdown type.
  final MyoroDropdownTypeEnum dropdownType;

  /// Items.
  final Set<T>? items;

  /// Item builder.
  final MyoroMenuItemBuilder<T> itemBuilder;

  /// [ValueNotifier] of showing controller.
  final ValueNotifier<bool>? showingController;

  /// Initially selected item.
  final Set<T>? initiallySelectedItems;

  /// [ValueNotifier] of the selected item.
  final ValueNotifier<Set<T>>? selectedItemsController;

  /// Callback executed when the selected items are changed.
  final ValueChanged<Set<T>>? onChanged;

  @override
  Widget build(_) {
    return _Base(
      style,
      MyoroMultiSelectionDropdownState(
        dropdownType,
        items,
        itemBuilder,
        showingController,
        initiallySelectedItems,
        selectedItemsController,
        onChanged,
      ),
    );
  }
}
