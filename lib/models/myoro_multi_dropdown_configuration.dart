import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Function executed when the selected item changes.
typedef MyoroMultiDropdownConfigurationOnChanged<T> =
    void Function(Set<T>? selectedItems);

/// Function executed when the enabled/disabled checkbox is pressed.
typedef MyoroMultiDropdownConfigurationCheckboxOnChanged<T> =
    void Function(bool enabled, Set<T>? selectedItems);

/// Configuration model of [MyoroMultiDropdown].
final class MyoroMultiDropdownConfiguration<T>
    extends MyoroDropdownConfiguration<T> {
  /// Initial selected item.
  ///
  /// Updates the selected items when you update this value within the same dropdown [Widget] lifespan.
  final Set<T> initiallySelectedItems;

  /// Function executed when the selected item changes.
  final MyoroMultiDropdownConfigurationOnChanged<T>? onChanged;

  /// Function executed when the enabled/disabled checkbox is pressed.
  final MyoroMultiDropdownConfigurationCheckboxOnChanged<T>? checkboxOnChanged;

  const MyoroMultiDropdownConfiguration._({
    super.label,
    super.enabled,
    super.allowItemClearing,
    super.menuMaxHeight,
    required super.dataConfiguration,
    required super.menuItemBuilder,
    required super.selectedItemBuilder,
    required this.initiallySelectedItems,
    required this.onChanged,
    required this.checkboxOnChanged,
    required MyoroMultiDropdownController<T> controller,
  }) : super(controller: controller);

  factory MyoroMultiDropdownConfiguration({
    String label = '',
    bool enabled = MyoroDropdownConfiguration.enabledDefaultValue,
    bool allowItemClearing =
        MyoroDropdownConfiguration.allowItemClearingDefaultValue,
    double? menuMaxHeight,
    required MyoroDataConfiguration<T> dataConfiguration,
    required MyoroMenuItemBuilder<T> menuItemBuilder,
    required MyoroDropdownConfigurationSelectedItemBuilder<T>
    selectedItemBuilder,
    Set<T>? initiallySelectedItems,
    MyoroMultiDropdownConfigurationOnChanged<T>? onChanged,
    MyoroMultiDropdownConfigurationCheckboxOnChanged<T>? checkboxOnChanged,
    MyoroMultiDropdownController<T>? controller,
  }) {
    return MyoroMultiDropdownConfiguration._(
      label: label,
      enabled: enabled,
      allowItemClearing: allowItemClearing,
      menuMaxHeight:
          menuMaxHeight ?? MyoroDropdownConfiguration.menuMaxHeightDefaultValue,
      dataConfiguration: dataConfiguration,
      menuItemBuilder: menuItemBuilder,
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
    double? menuMaxHeight,
    MyoroDataConfiguration<T>? dataConfiguration,
    MyoroMenuItemBuilder<T>? menuItemBuilder,
    MyoroDropdownConfigurationSelectedItemBuilder<T>? selectedItemBuilder,
    Set<T>? initiallySelectedItems,
    MyoroMultiDropdownConfigurationOnChanged<T>? onChanged,
    bool onChangedEnabled = true,
    MyoroMultiDropdownConfigurationCheckboxOnChanged<T>? checkboxOnChanged,
    bool checkboxOnChangedEnabled = true,
    MyoroMultiDropdownController<T>? controller,
  }) {
    return MyoroMultiDropdownConfiguration(
      label: label ?? this.label,
      enabled: enabled ?? this.enabled,
      allowItemClearing: allowItemClearing ?? this.allowItemClearing,
      menuMaxHeight: menuMaxHeight ?? this.menuMaxHeight,
      dataConfiguration: dataConfiguration ?? this.dataConfiguration,
      menuItemBuilder: menuItemBuilder ?? this.menuItemBuilder,
      selectedItemBuilder: selectedItemBuilder ?? this.selectedItemBuilder,
      initiallySelectedItems:
          initiallySelectedItems ?? this.initiallySelectedItems,
      onChanged: onChangedEnabled ? (onChanged ?? this.onChanged) : null,
      checkboxOnChanged:
          checkboxOnChangedEnabled
              ? (checkboxOnChanged ?? this.checkboxOnChanged)
              : null,
      controller: this.controller as MyoroMultiDropdownController<T>?,
    );
  }

  @override
  void setInitiallySelectedItems() {
    if (initiallySelectedItems.isEmpty) return;
    (controller as MyoroMultiDropdownController<T>?)?.selectItems(
      initiallySelectedItems,
    );
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
      menuMaxHeight,
      dataConfiguration,
      menuItemBuilder,
      selectedItemBuilder,
      initiallySelectedItems,
      onChanged,
      checkboxOnChanged,
      // controller,
    ];
  }

  @override
  String toString() =>
      'MyoroMultiDropdownConfiguration<$T>(\n'
      '  label: $label,\n'
      '  enabled: $enabled,\n'
      '  allowItemClearing: $allowItemClearing,\n'
      '  menuMaxHeight: $menuMaxHeight,\n'
      '  dataConfiguration: $dataConfiguration,\n'
      '  menuItemBuilder: $menuItemBuilder,\n'
      '  selectedItemBuilder: $selectedItemBuilder,\n'
      '  initialSelectedItem: $initiallySelectedItems,\n'
      '  onChanged: $onChanged,\n'
      '  checkboxOnChanged: $checkboxOnChanged,\n'
      '  controller: $controller,\n'
      ');';
}
