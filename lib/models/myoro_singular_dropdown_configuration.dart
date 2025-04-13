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
  final T? initiallySelectedItem;

  /// Function executed when the selected item changes.hurricanes
  final MyoroSingularDropdownConfigurationOnChanged<T>? onChanged;

  /// Function executed when the enabled/disabled checkbox is pressed.
  final MyoroSingularDropdownConfigurationCheckboxOnChanged<T>?
  checkboxOnChanged;

  const MyoroSingularDropdownConfiguration._({
    required super.label,
    required super.enabled,
    required super.allowItemClearing,
    required super.menuConfiguration,
    required super.selectedItemBuilder,
    required this.initiallySelectedItem,
    required this.onChanged,
    required this.checkboxOnChanged,
    required MyoroSingularDropdownController<T> controller,
  }) : super(controller: controller);

  factory MyoroSingularDropdownConfiguration({
    String label = '',
    bool enabled = MyoroDropdownConfiguration.enabledDefaultValue,
    bool allowItemClearing =
        MyoroDropdownConfiguration.allowItemClearingDefaultValue,
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
      enabled: enabled,
      allowItemClearing: allowItemClearing,
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
    bool? enabled,
    bool? allowItemClearing,
    MyoroMenuConfiguration<T>? menuConfiguration,
    MyoroDropdownConfigurationSelectedItemBuilder<T>? selectedItemBuilder,
    T? initiallySelectedItem,
    bool initiallySelectedItemEnabled = true,
    MyoroSingularDropdownConfigurationOnChanged<T>? onChanged,
    bool onChangedEnabled = true,
    MyoroSingularDropdownConfigurationCheckboxOnChanged<T>? checkboxOnChanged,
    bool checkboxOnChangedEnabled = true,
    MyoroSingularDropdownController<T>? controller,
  }) {
    return MyoroSingularDropdownConfiguration(
      label: label ?? this.label,
      enabled: enabled ?? this.enabled,
      allowItemClearing: allowItemClearing ?? this.allowItemClearing,
      menuConfiguration: menuConfiguration ?? this.menuConfiguration,
      selectedItemBuilder: selectedItemBuilder ?? this.selectedItemBuilder,
      initiallySelectedItem:
          initiallySelectedItemEnabled
              ? (initiallySelectedItem ?? this.initiallySelectedItem)
              : null,
      onChanged: onChangedEnabled ? (onChanged ?? this.onChanged) : null,
      checkboxOnChanged:
          checkboxOnChangedEnabled
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
      enabled,
      allowItemClearing,
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
      '  enabled: $enabled,\n'
      '  allowItemClearing: $allowItemClearing,\n'
      '  menuConfiguration: $menuConfiguration,\n'
      '  selectedItemBuilder: $selectedItemBuilder,\n'
      '  initiallySelectedItem: $initiallySelectedItem,\n'
      '  onChanged: $onChanged,\n'
      '  checkboxOnChanged: $checkboxOnChanged,\n'
      '  controller: $controller,\n'
      ');';
}
