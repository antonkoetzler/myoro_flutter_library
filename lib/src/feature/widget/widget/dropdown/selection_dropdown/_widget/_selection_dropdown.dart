part of '../bundle/myoro_selection_dropdown_bundle.dart';

/// Selection dropdown.
abstract class _SelectionDropdown<T> extends StatelessWidget {
  /// Default value of [style].
  static const styleDefaultValue = MyoroDropdownStyle();

  /// Default value of [label].
  static const labelDefaultValue = kMyoroEmptyString;

  /// Default value of [enabled].
  static const enabledDefaultValue = true;

  /// Default constructor.
  const _SelectionDropdown({
    super.key,
    this.style = styleDefaultValue,
    this.label = labelDefaultValue,
    this.enabled = enabledDefaultValue,
    this.dropdownType,
    this.items,
    this.showingController,
    required this.itemBuilder,
    required this.selectedItemBuilder,
  });

  /// Style.
  final MyoroDropdownStyle style;

  /// Label of the selection dropdown.
  final String label;

  /// If the dropdown is enabled.
  final bool enabled;

  /// Dropdown type.
  final MyoroDropdownTypeEnum? dropdownType;

  /// Items.
  final Set<T>? items;

  /// [ValueNotifier] of showing controller.
  final ValueNotifier<bool>? showingController;

  /// Item builder.
  final MyoroMenuItemBuilder<T> itemBuilder;

  /// Selected item builder.
  final MyoroSelectionDropdownSelectedItemBuilder<T> selectedItemBuilder;
}
