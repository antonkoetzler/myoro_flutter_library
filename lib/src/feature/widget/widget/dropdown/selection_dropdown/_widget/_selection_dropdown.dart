part of '../bundle/myoro_selection_dropdown_bundle.dart';

/// Selection dropdown.
abstract class _SelectionDropdown<T> extends StatelessWidget {
  /// Default value of [style].
  static const styleDefaultValue = MyoroMenuStyle();

  /// Default value of [dropdownType].
  static const dropdownTypeDefaultValue = MyoroDropdownTypeEnum.expanding;

  /// Default constructor.
  const _SelectionDropdown({
    super.key,
    this.style = styleDefaultValue,
    this.dropdownType = dropdownTypeDefaultValue,
    this.items,
    this.showingController,
    required this.itemBuilder,
    required this.selectedItemBuilder,
  });

  /// Style.
  final MyoroMenuStyle style;

  /// Dropdown type.
  final MyoroDropdownTypeEnum dropdownType;

  /// Items.
  final Set<T>? items;

  /// [ValueNotifier] of showing controller.
  final ValueNotifier<bool>? showingController;

  /// Item builder.
  final MyoroMenuItemBuilder<T> itemBuilder;

  /// Selected item builder.
  final MyoroSelectionDropdownSelectedItemBuilder<T> selectedItemBuilder;
}
