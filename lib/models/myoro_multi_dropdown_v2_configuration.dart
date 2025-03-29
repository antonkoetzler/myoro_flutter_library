import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Function executed when the selected item changes.
typedef MyoroMultiDropdownV2ConfigurationOnChanged<T> =
    void Function(Set<T>? selectedItems);

/// Function executed when the enabled/disabled checkbox is pressed.
typedef MyoroMultiDropdownV2ConfigurationCheckboxOnChanged<T> =
    void Function(bool enabled, Set<T>? selectedItems);

/// Configuration model of [MyoroMultiDropdownV2].
final class MyoroMultiDropdownV2Configuration<T>
    extends MyoroDropdownV2Configuration<T> {
  /// Initial selected item.
  ///
  /// Updates the selected items when you update this value within the same dropdown [Widget] lifespan.
  final Set<T> initialSelectedItems;

  /// Function executed when the selected item changes.
  final MyoroMultiDropdownV2ConfigurationOnChanged<T>? onChanged;

  /// Function executed when the enabled/disabled checkbox is pressed.
  final MyoroMultiDropdownV2ConfigurationCheckboxOnChanged<T>?
  checkboxOnChanged;

  const MyoroMultiDropdownV2Configuration({
    super.label,
    super.enabled,
    required super.dataConfiguration,
    required super.menuItemBuilder,
    required super.selectedItemBuilder,
    this.initialSelectedItems = const {},
    this.onChanged,
    this.checkboxOnChanged,
    MyoroMultiDropdownV2Controller<T>? controller,
  }) : super(controller: controller);

  @override
  MyoroMultiDropdownV2Configuration<T> copyWith({
    String? label,
    bool labelEnabled = true,
    bool? enabled,
    MyoroDataConfiguration<T>? dataConfiguration,
    MyoroMenuItemBuilder<T>? menuItemBuilder,
    MyoroDropdownV2ConfigurationSelectedItemBuilder<T>? selectedItemBuilder,
    Set<T>? initialSelectedItems,
    MyoroMultiDropdownV2ConfigurationOnChanged<T>? onChanged,
    bool onChangedEnabled = true,
    MyoroMultiDropdownV2ConfigurationCheckboxOnChanged<T>? checkboxOnChanged,
    bool checkboxOnChangedEnabled = true,
    MyoroMultiDropdownV2Controller<T>? controller,
    bool controllerEnabled = true,
  }) {
    return MyoroMultiDropdownV2Configuration(
      label: labelEnabled ? (label ?? this.label) : null,
      enabled: enabled ?? this.enabled,
      dataConfiguration: dataConfiguration ?? this.dataConfiguration,
      menuItemBuilder: menuItemBuilder ?? this.menuItemBuilder,
      selectedItemBuilder: selectedItemBuilder ?? this.selectedItemBuilder,
      initialSelectedItems: initialSelectedItems ?? this.initialSelectedItems,
      onChanged: onChangedEnabled ? (onChanged ?? this.onChanged) : null,
      checkboxOnChanged:
          checkboxOnChangedEnabled
              ? (checkboxOnChanged ?? this.checkboxOnChanged)
              : null,
      controller: controllerEnabled ? (controller ?? this.controller) : null,
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
      initialSelectedItems,
      onChanged,
      checkboxOnChanged,
      controller,
    ];
  }

  @override
  String toString() =>
      'MyoroMultiDropdownV2Configuration<$T>(\n'
      '  label: $label,\n'
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
