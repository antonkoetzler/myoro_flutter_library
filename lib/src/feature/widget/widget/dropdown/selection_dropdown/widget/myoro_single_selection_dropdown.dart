part of '../bundle/myoro_selection_dropdown_bundle.dart';

/// Single selection dropdown.
class MyoroSingleSelectionDropdown<T> extends StatelessWidget {
  /// Default value of [style].
  static const styleDefaultValue = MyoroMenuStyle();

  /// Default value of [dropdownType].
  static const dropdownTypeDefaultValue = MyoroDropdownTypeEnum.expanding;

  /// Default constructor.
  const MyoroSingleSelectionDropdown({
    super.key,
    this.style = styleDefaultValue,
    this.dropdownType = dropdownTypeDefaultValue,
    this.items,
    required this.itemBuilder,
    this.showingController,
    this.initiallySelectedItem,
    this.selectedItemController,
    this.onChanged,
  }) : assert(
         !(initiallySelectedItem != null && selectedItemController != null),
         '[MyoroSingleSelectionDropdown<$T>]: [initiallySelectedItem] and [selectedItemController] cannot be provided together.',
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
  final T? initiallySelectedItem;

  /// [ValueNotifier] of the selected item.
  final ValueNotifier<T?>? selectedItemController;

  /// Callback executed when the selected item is changed.
  final ValueChanged<T?>? onChanged;

  @override
  Widget build(_) {
    return _Base(
      style,
      MyoroSingleSelectionDropdownState(
        dropdownType,
        items,
        itemBuilder,
        showingController,
        initiallySelectedItem,
        selectedItemController,
        onChanged,
      ),
    );
  }
}
