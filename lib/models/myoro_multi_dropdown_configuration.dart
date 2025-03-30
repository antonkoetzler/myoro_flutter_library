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
  final Set<T> initialSelectedItems;

  /// Function executed when the selected item changes.
  final MyoroMultiDropdownConfigurationOnChanged<T>? onChanged;

  /// Function executed when the enabled/disabled checkbox is pressed.
  final MyoroMultiDropdownConfigurationCheckboxOnChanged<T>? checkboxOnChanged;

  const MyoroMultiDropdownConfiguration({
    super.label,
    super.enabled,
    super.allowItemClearing,
    required super.dataConfiguration,
    required super.menuItemBuilder,
    required super.selectedItemBuilder,
    this.initialSelectedItems = const {},
    this.onChanged,
    this.checkboxOnChanged,
    MyoroMultiDropdownController<T>? controller,
  }) : super(controller: controller);

  @override
  MyoroMultiDropdownConfiguration<T> copyWith({
    String? label,
    bool labelEnabled = true,
    bool? enabled,
    bool? allowItemClearing,
    MyoroDataConfiguration<T>? dataConfiguration,
    MyoroMenuItemBuilder<T>? menuItemBuilder,
    MyoroDropdownConfigurationSelectedItemBuilder<T>? selectedItemBuilder,
    Set<T>? initialSelectedItems,
    MyoroMultiDropdownConfigurationOnChanged<T>? onChanged,
    bool onChangedEnabled = true,
    MyoroMultiDropdownConfigurationCheckboxOnChanged<T>? checkboxOnChanged,
    bool checkboxOnChangedEnabled = true,
    MyoroMultiDropdownController<T>? controller,
    bool controllerEnabled = true,
  }) {
    return MyoroMultiDropdownConfiguration(
      label: labelEnabled ? (label ?? this.label) : null,
      enabled: enabled ?? this.enabled,
      allowItemClearing: allowItemClearing ?? this.allowItemClearing,
      dataConfiguration: dataConfiguration ?? this.dataConfiguration,
      menuItemBuilder: menuItemBuilder ?? this.menuItemBuilder,
      selectedItemBuilder: selectedItemBuilder ?? this.selectedItemBuilder,
      initialSelectedItems: initialSelectedItems ?? this.initialSelectedItems,
      onChanged: onChangedEnabled ? (onChanged ?? this.onChanged) : null,
      checkboxOnChanged:
          checkboxOnChangedEnabled
              ? (checkboxOnChanged ?? this.checkboxOnChanged)
              : null,
      controller:
          controllerEnabled
              ? (controller ??
                  (this.controller as MyoroMultiDropdownController<T>))
              : null,
    );
  }

  @override
  List<Object?> get props {
    return [
      label,
      enabled,
      allowItemClearing,
      dataConfiguration,
      menuItemBuilder,
      selectedItemBuilder,
      initialSelectedItems,
      onChanged,
      checkboxOnChanged,
      controller,
    ];
  }

  @override
  String toString() =>
      'MyoroMultiDropdownConfiguration<$T>(\n'
      '  label: $label,\n'
      '  allowItemClearing: $allowItemClearing,\n'
      '  enabled: $enabled,\n'
      '  dataConfiguration: $dataConfiguration,\n'
      '  menuItemBuilder: $menuItemBuilder,\n'
      '  selectedItemBuilder: $selectedItemBuilder,\n'
      '  initialSelectedItem: $initialSelectedItems,\n'
      '  onChanged: $onChanged,\n'
      '  checkboxOnChanged: $checkboxOnChanged,\n'
      '  controller: $controller,\n'
      ');';
}
