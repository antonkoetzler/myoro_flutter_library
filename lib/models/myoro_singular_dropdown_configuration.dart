import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Function executed when the selected item changes.
typedef MyoroSingularDropdownConfigurationOnChanged<T> =
    void Function(T? selectedItem);

/// Function executed when the enabled/disabled checkbox is pressed.
typedef MyoroSingularDropdownConfigurationCheckboxOnChanged<T> =
    void Function(bool enabled, T? selectedItem);

/// Configuration model of [MyoroSingularDropdown].
final class MyoroSingularDropdownConfiguration<T>
    extends MyoroDropdownConfiguration<T> {
  /// Initial selected item.
  ///
  /// Updates the selected item when you update this value within the same dropdown [Widget] lifespan.
  final T? initialSelectedItem;

  /// Function executed when the selected item changes.
  final MyoroSingularDropdownConfigurationOnChanged<T>? onChanged;

  /// Function executed when the enabled/disabled checkbox is pressed.
  final MyoroSingularDropdownConfigurationCheckboxOnChanged<T>?
  checkboxOnChanged;

  const MyoroSingularDropdownConfiguration({
    super.label,
    super.enabled,
    super.allowItemClearing,
    required super.dataConfiguration,
    required super.menuItemBuilder,
    required super.selectedItemBuilder,
    this.initialSelectedItem,
    this.onChanged,
    this.checkboxOnChanged,
    MyoroSingularDropdownController<T>? controller,
  }) : super(controller: controller);

  @override
  MyoroSingularDropdownConfiguration<T> copyWith({
    String? label,
    bool labelEnabled = true,
    bool? enabled,
    bool? allowItemClearing,
    MyoroDataConfiguration<T>? dataConfiguration,
    MyoroMenuItemBuilder<T>? menuItemBuilder,
    MyoroDropdownConfigurationSelectedItemBuilder<T>? selectedItemBuilder,
    T? initialSelectedItem,
    bool initialSelectedItemEnabled = true,
    MyoroSingularDropdownConfigurationOnChanged<T>? onChanged,
    bool onChangedEnabled = true,
    MyoroSingularDropdownConfigurationCheckboxOnChanged<T>? checkboxOnChanged,
    bool checkboxOnChangedEnabled = true,
    MyoroSingularDropdownController<T>? controller,
    bool controllerEnabled = true,
  }) {
    return MyoroSingularDropdownConfiguration(
      label: labelEnabled ? (label ?? this.label) : null,
      enabled: enabled ?? this.enabled,
      allowItemClearing: allowItemClearing ?? this.allowItemClearing,
      dataConfiguration: dataConfiguration ?? this.dataConfiguration,
      menuItemBuilder: menuItemBuilder ?? this.menuItemBuilder,
      selectedItemBuilder: selectedItemBuilder ?? this.selectedItemBuilder,
      initialSelectedItem:
          initialSelectedItemEnabled
              ? (initialSelectedItem ?? this.initialSelectedItem)
              : null,
      onChanged: onChangedEnabled ? (onChanged ?? this.onChanged) : null,
      checkboxOnChanged:
          checkboxOnChangedEnabled
              ? (checkboxOnChanged ?? this.checkboxOnChanged)
              : null,
      controller:
          controllerEnabled
              ? (controller ??
                  (this.controller as MyoroSingularDropdownController<T>?))
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
      initialSelectedItem,
      onChanged,
      checkboxOnChanged,
      controller,
    ];
  }

  @override
  String toString() =>
      'MyoroSingularDropdownConfiguration<$T>(\n'
      '  label: $label,\n'
      '  enabled: $enabled,\n'
      '  allowItemClearing: $allowItemClearing,\n'
      '  dataConfiguration: $dataConfiguration,\n'
      '  menuItemBuilder: $menuItemBuilder,\n'
      '  selectedItemBuilder: $selectedItemBuilder,\n'
      '  initialSelectedItem: $initialSelectedItem,\n'
      '  onChanged: $onChanged,\n'
      '  checkboxOnChanged: $checkboxOnChanged,\n'
      '  controller: $controller,\n'
      ');';
}
