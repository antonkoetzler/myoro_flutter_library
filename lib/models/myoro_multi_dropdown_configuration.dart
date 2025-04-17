import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Function executed when the selected item changes.
typedef MyoroMultiDropdownConfigurationOnChanged<T> = void Function(Set<T>? selectedItems);

/// Function executed when the enabled/disabled checkbox is pressed.
typedef MyoroMultiDropdownConfigurationCheckboxOnChanged<T> = void Function(bool enabled, Set<T>? selectedItems);

/// Configuration model of [MyoroMultiDropdown].
final class MyoroMultiDropdownConfiguration<T> extends MyoroDropdownConfiguration<T> {
  /// Initial selected item.
  ///
  /// Updates the selected items when you update this value within the same dropdown [Widget] lifespan.
  final Set<T> initiallySelectedItems;

  /// Function executed when the selected item changes.
  final MyoroMultiDropdownConfigurationOnChanged<T>? onChanged;

  /// Function executed when the enabled/disabled checkbox is pressed.
  final MyoroMultiDropdownConfigurationCheckboxOnChanged<T>? checkboxOnChanged;

  const MyoroMultiDropdownConfiguration._({
    required super.label,
    required super.enabled,
    required super.allowItemClearing,
    required super.selectedItemTextAlign,
    required super.menuConfiguration,
    required super.selectedItemBuilder,
    required this.initiallySelectedItems,
    required this.onChanged,
    required this.checkboxOnChanged,
    required MyoroMultiDropdownController<T> controller,
  }) : super(controller: controller);

  factory MyoroMultiDropdownConfiguration({
    String label = '',
    bool enabled = MyoroDropdownConfiguration.enabledDefaultValue,
    bool allowItemClearing = MyoroDropdownConfiguration.allowItemClearingDefaultValue,
    TextAlign selectedItemTextAlign = MyoroInputConfiguration.textAlignDefaultValue,
    required MyoroMenuConfiguration<T> menuConfiguration,
    required MyoroDropdownConfigurationSelectedItemBuilder<T> selectedItemBuilder,
    Set<T>? initiallySelectedItems,
    MyoroMultiDropdownConfigurationOnChanged<T>? onChanged,
    MyoroMultiDropdownConfigurationCheckboxOnChanged<T>? checkboxOnChanged,
    MyoroMultiDropdownController<T>? controller,
  }) {
    return MyoroMultiDropdownConfiguration._(
      label: label,
      enabled: enabled,
      allowItemClearing: allowItemClearing,
      selectedItemTextAlign: selectedItemTextAlign,
      menuConfiguration: menuConfiguration,
      selectedItemBuilder: selectedItemBuilder,
      initiallySelectedItems: initiallySelectedItems ?? const {},
      onChanged: onChanged,
      checkboxOnChanged: checkboxOnChanged,
      controller: controller ?? MyoroMultiDropdownController<T>(),
    );
  }

  @override
  MyoroMultiDropdownConfiguration<T> copyWith({
    String? label,
    bool? enabled,
    bool? allowItemClearing,
    TextAlign? selectedItemTextAlign,
    MyoroMenuConfiguration<T>? menuConfiguration,
    MyoroDropdownConfigurationSelectedItemBuilder<T>? selectedItemBuilder,
    Set<T>? initiallySelectedItems,
    MyoroMultiDropdownConfigurationOnChanged<T>? onChanged,
    bool onChangedProvided = true,
    MyoroMultiDropdownConfigurationCheckboxOnChanged<T>? checkboxOnChanged,
    bool checkboxOnChangedProvided = true,
    MyoroMultiDropdownController<T>? controller,
  }) {
    return MyoroMultiDropdownConfiguration(
      label: label ?? this.label,
      enabled: enabled ?? this.enabled,
      allowItemClearing: allowItemClearing ?? this.allowItemClearing,
      selectedItemTextAlign: selectedItemTextAlign ?? this.selectedItemTextAlign,
      menuConfiguration: menuConfiguration ?? this.menuConfiguration,
      selectedItemBuilder: selectedItemBuilder ?? this.selectedItemBuilder,
      initiallySelectedItems: initiallySelectedItems ?? this.initiallySelectedItems,
      onChanged: onChangedProvided ? (onChanged ?? this.onChanged) : null,
      checkboxOnChanged: checkboxOnChangedProvided ? (checkboxOnChanged ?? this.checkboxOnChanged) : null,
      controller: this.controller as MyoroMultiDropdownController<T>?,
    );
  }

  @override
  void setInitiallySelectedItems() {
    if (initiallySelectedItems.isEmpty) return;
    (controller as MyoroMultiDropdownController<T>?)?.selectItems(initiallySelectedItems);
  }

  @override
  void handleOnChanged(Set<T> selectedItems) {
    onChanged?.call(selectedItems);
  }

  @override
  void handleCheckboxOnChanged(bool enabled, Set<T> selectedItems) {
    checkboxOnChanged?.call(enabled, selectedItems);
  }

  @override
  bool get checkboxOnChangedNotNull => checkboxOnChanged != null;

  @override
  List<Object?> get props {
    return [
      label,
      enabled,
      allowItemClearing,
      selectedItemTextAlign,
      menuConfiguration,
      selectedItemBuilder,
      initiallySelectedItems,
      onChanged,
      checkboxOnChanged,
      // Breaks comparisons.
      // controller,
    ];
  }

  @override
  String toString() =>
      'MyoroMultiDropdownConfiguration<$T>(\n'
      '  label: $label,\n'
      '  enabled: $enabled,\n'
      '  allowItemClearing: $allowItemClearing,\n'
      '  selectedItemTextAlign: $selectedItemTextAlign,\n'
      '  menuConfiguration: $menuConfiguration,\n'
      '  selectedItemBuilder: $selectedItemBuilder,\n'
      '  initialSelectedItem: $initiallySelectedItems,\n'
      '  onChanged: $onChanged,\n'
      '  checkboxOnChanged: $checkboxOnChanged,\n'
      '  controller: $controller,\n'
      ');';
}
