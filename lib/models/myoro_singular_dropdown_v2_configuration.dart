import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Function executed when the selected item changes.
typedef MyoroSingularDropdownV2ConfigurationOnChanged<T> =
    void Function(T? selectedItem);

/// Function executed when the enabled/disabled checkbox is pressed.
typedef MyoroSingularDropdownV2ConfigurationCheckboxOnChanged<T> =
    void Function(bool enabled, T? selectedItem);

/// Configuration model of [MyoroSingularDropdownV2].
final class MyoroSingularDropdownV2Configuration<T>
    extends MyoroDropdownV2Configuration<T> {
  /// Initial selected item.
  ///
  /// Updates the selected item when you update this value within the same dropdown [Widget] lifespan.
  final T? initialSelectedItem;

  /// Function executed when the selected item changes.
  final MyoroSingularDropdownV2ConfigurationOnChanged<T>? onChanged;

  /// Function executed when the enabled/disabled checkbox is pressed.
  final MyoroSingularDropdownV2ConfigurationCheckboxOnChanged<T>?
  checkboxOnChanged;

  const MyoroSingularDropdownV2Configuration({
    super.label,
    super.enabled,
    required super.dataConfiguration,
    required super.menuItemBuilder,
    required super.selectedItemBuilder,
    this.initialSelectedItem,
    this.onChanged,
    this.checkboxOnChanged,
  });

  @override
  MyoroSingularDropdownV2Configuration<T> copyWith({
    String? label,
    bool labelEnabled = true,
    bool? enabled,
    MyoroDataConfiguration<T>? dataConfiguration,
    MyoroMenuItemBuilder<T>? menuItemBuilder,
    MyoroDropdownV2ConfigurationSelectedItemBuilder<T>? selectedItemBuilder,
    T? initialSelectedItem,
    bool initialSelectedItemEnabled = true,
    MyoroSingularDropdownV2ConfigurationOnChanged<T>? onChanged,
    bool onChangedEnabled = true,
    MyoroSingularDropdownV2ConfigurationCheckboxOnChanged<T>? checkboxOnChanged,
    bool checkboxOnChangedEnabled = true,
  }) {
    return MyoroSingularDropdownV2Configuration(
      label: labelEnabled ? (label ?? this.label) : null,
      enabled: enabled ?? this.enabled,
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
    );
  }

  @override
  List<Object?> get props {
    return [
      label,
      enabled,
      dataConfiguration,
      menuItemBuilder,
      selectedItemBuilder,
      initialSelectedItem,
      onChanged,
      checkboxOnChanged,
    ];
  }

  @override
  String toString() =>
      'MyoroSingularDropdownV2Configuration<$T>(\n'
      '  label: $label,\n'
      '  enabled: $enabled,\n'
      '  dataConfiguration: $dataConfiguration,\n'
      '  menuItemBuilder: $menuItemBuilder,\n'
      '  selectedItemBuilder: $selectedItemBuilder,\n'
      '  initialSelectedItem: $initialSelectedItem,\n'
      '  onChanged: $onChanged,\n'
      '  checkboxOnChanged: $checkboxOnChanged,\n'
      ');';
}
