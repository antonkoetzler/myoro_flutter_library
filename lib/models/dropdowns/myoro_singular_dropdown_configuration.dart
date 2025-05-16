import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Function executed when the selected item changes.
typedef MyoroSingularDropdownConfigurationOnChanged<T> =
    void Function(T? selectedItem);

/// Function executed when the enabled/disabled checkbox is pressed.
typedef MyoroSingularDropdownConfigurationCheckboxOnChanged<T> =
    void Function(bool enabled, T? selectedItem);

/// Configuration model of [MyoroSingularDropdown].
class MyoroSingularDropdownConfiguration<T>
    extends MyoroDropdownConfiguration<T> {
  /// Initial selected item.
  ///
  /// Updates the selected item when you update this value within the same dropdown [Widget] lifespan.
  final T? initiallySelectedItem;

  /// Function executed when the selected item changes.hurricanes
  final MyoroSingularDropdownConfigurationOnChanged<T>? onChanged;

  /// Function executed when the enabled/disabled checkbox is pressed.
  final MyoroSingularDropdownConfigurationCheckboxOnChanged<T>?
  checkboxOnChanged;

  const MyoroSingularDropdownConfiguration._({
    required super.label,
    required super.menuTypeEnum,
    required super.enabled,
    required super.allowItemClearing,
    required super.selectedItemTextAlign,
    required super.menuConfiguration,
    required super.selectedItemBuilder,
    required this.initiallySelectedItem,
    required this.onChanged,
    required this.checkboxOnChanged,
    required MyoroSingularDropdownController<T> controller,
  }) : super(controller: controller);

  factory MyoroSingularDropdownConfiguration({
    String label = '',
    MyoroDropdownMenuTypeEnum menuTypeEnum =
        MyoroDropdownConfiguration.menuTypeEnumDefaultValue,
    bool enabled = MyoroDropdownConfiguration.enabledDefaultValue,
    bool allowItemClearing =
        MyoroDropdownConfiguration.allowItemClearingDefaultValue,
    TextAlign selectedItemTextAlign =
        MyoroInputConfiguration.textAlignDefaultValue,
    required MyoroMenuConfiguration<T> menuConfiguration,
    required MyoroDropdownConfigurationSelectedItemBuilder<T>
    selectedItemBuilder,
    T? initiallySelectedItem,
    MyoroSingularDropdownConfigurationOnChanged<T>? onChanged,
    MyoroSingularDropdownConfigurationCheckboxOnChanged<T>? checkboxOnChanged,
    MyoroSingularDropdownController<T>? controller,
  }) {
    return MyoroSingularDropdownConfiguration._(
      label: label,
      menuTypeEnum: menuTypeEnum,
      enabled: enabled,
      allowItemClearing: allowItemClearing,
      selectedItemTextAlign: selectedItemTextAlign,
      menuConfiguration: menuConfiguration,
      selectedItemBuilder: selectedItemBuilder,
      initiallySelectedItem: initiallySelectedItem,
      onChanged: onChanged,
      checkboxOnChanged: checkboxOnChanged,
      controller: controller ?? MyoroSingularDropdownController<T>(),
    );
  }

  @override
  MyoroSingularDropdownConfiguration<T> copyWith({
    String? label,
    MyoroDropdownMenuTypeEnum? menuTypeEnum,
    bool? enabled,
    bool? allowItemClearing,
    TextAlign? selectedItemTextAlign,
    MyoroMenuConfiguration<T>? menuConfiguration,
    MyoroDropdownConfigurationSelectedItemBuilder<T>? selectedItemBuilder,
    T? initiallySelectedItem,
    bool initiallySelectedItemProvided = true,
    MyoroSingularDropdownConfigurationOnChanged<T>? onChanged,
    bool onChangedProvided = true,
    MyoroSingularDropdownConfigurationCheckboxOnChanged<T>? checkboxOnChanged,
    bool checkboxOnChangedProvided = true,
    MyoroSingularDropdownController<T>? controller,
  }) {
    return MyoroSingularDropdownConfiguration(
      label: label ?? this.label,
      menuTypeEnum: menuTypeEnum ?? this.menuTypeEnum,
      enabled: enabled ?? this.enabled,
      allowItemClearing: allowItemClearing ?? this.allowItemClearing,
      selectedItemTextAlign:
          selectedItemTextAlign ?? this.selectedItemTextAlign,
      menuConfiguration: menuConfiguration ?? this.menuConfiguration,
      selectedItemBuilder: selectedItemBuilder ?? this.selectedItemBuilder,
      initiallySelectedItem:
          initiallySelectedItemProvided
              ? (initiallySelectedItem ?? this.initiallySelectedItem)
              : null,
      onChanged: onChangedProvided ? (onChanged ?? this.onChanged) : null,
      checkboxOnChanged:
          checkboxOnChangedProvided
              ? (checkboxOnChanged ?? this.checkboxOnChanged)
              : null,
      controller: this.controller as MyoroSingularDropdownController<T>?,
    );
  }

  @override
  void setInitiallySelectedItems() {
    if (initiallySelectedItem == null) return;
    controller.toggleItem(initiallySelectedItem as T);
  }

  @override
  void handleOnChanged(Set<T> selectedItems) {
    onChanged?.call(selectedItems.isNotEmpty ? selectedItems.first : null);
  }

  @override
  void handleCheckboxOnChanged(bool enabled, Set<T> selectedItems) {
    checkboxOnChanged?.call(
      enabled,
      selectedItems.isNotEmpty ? selectedItems.first : null,
    );
  }

  @override
  bool get checkboxOnChangedNotNull => checkboxOnChanged != null;

  @override
  List<Object?> get props {
    return [
      label,
      menuTypeEnum,
      enabled,
      allowItemClearing,
      selectedItemTextAlign,
      menuConfiguration,
      selectedItemBuilder,
      initiallySelectedItem,
      onChanged,
      checkboxOnChanged,
      // Breaks comparisons.
      // controller,
    ];
  }

  @override
  String toString() =>
      'MyoroSingularDropdownConfiguration<$T>(\n'
      '  label: $label,\n'
      '  menuTypeEnum: $menuTypeEnum,\n'
      '  enabled: $enabled,\n'
      '  allowItemClearing: $allowItemClearing,\n'
      '  selectedItemTextAlign: $selectedItemTextAlign,\n'
      '  menuConfiguration: $menuConfiguration,\n'
      '  selectedItemBuilder: $selectedItemBuilder,\n'
      '  initiallySelectedItem: $initiallySelectedItem,\n'
      '  onChanged: $onChanged,\n'
      '  checkboxOnChanged: $checkboxOnChanged,\n'
      '  controller: $controller,\n'
      ');';
}
