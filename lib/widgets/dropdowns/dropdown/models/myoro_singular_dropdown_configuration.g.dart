// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_singular_dropdown_configuration.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

extension $MyoroSingularDropdownConfigurationExtension<T>
    on MyoroSingularDropdownConfiguration<T> {
  MyoroSingularDropdownConfiguration<T> copyWith({
    void Function(T?)? onChanged,
    bool onChangedProvided = true,
    void Function(bool, T?)? checkboxOnChanged,
    bool checkboxOnChangedProvided = true,
    String? label,
    MyoroDropdownMenuTypeEnum? menuTypeEnum,
    bool? allowItemClearing,
    TextAlign? selectedItemTextAlign,
    MyoroMenuConfiguration<T>? menuConfiguration,
    String Function(T)? selectedItemBuilder,
  }) {
    return MyoroSingularDropdownConfiguration(
      label: label ?? this.label,
      menuTypeEnum: menuTypeEnum ?? this.menuTypeEnum,
      allowItemClearing: allowItemClearing ?? this.allowItemClearing,
      selectedItemTextAlign:
          selectedItemTextAlign ?? this.selectedItemTextAlign,
      menuConfiguration: menuConfiguration ?? this.menuConfiguration,
      selectedItemBuilder: selectedItemBuilder ?? this.selectedItemBuilder,
      onChanged: onChangedProvided ? (onChanged ?? this.onChanged) : null,
      checkboxOnChanged:
          checkboxOnChangedProvided
              ? (checkboxOnChanged ?? this.checkboxOnChanged)
              : null,
    );
  }
}

/// Apply this mixin to [MyoroSingularDropdownConfiguration] once the code is generated.
///
/// ```dart
/// class MyoroSingularDropdownConfiguration<T> with $MyoroSingularDropdownConfigurationMixin<T> {}
/// ```
mixin $MyoroSingularDropdownConfigurationMixin<T> {
  MyoroSingularDropdownConfiguration<T> get self =>
      this as MyoroSingularDropdownConfiguration<T>;

  @override
  bool operator ==(Object other) {
    return other is MyoroSingularDropdownConfiguration<T> &&
        other.runtimeType == runtimeType &&
        other.onChanged == self.onChanged &&
        other.checkboxOnChanged == self.checkboxOnChanged &&
        other.label == self.label &&
        other.menuTypeEnum == self.menuTypeEnum &&
        other.allowItemClearing == self.allowItemClearing &&
        other.selectedItemTextAlign == self.selectedItemTextAlign &&
        other.menuConfiguration == self.menuConfiguration &&
        other.selectedItemBuilder == self.selectedItemBuilder;
  }

  @override
  int get hashCode {
    return Object.hash(
      self.onChanged,
      self.checkboxOnChanged,
      self.label,
      self.menuTypeEnum,
      self.allowItemClearing,
      self.selectedItemTextAlign,
      self.menuConfiguration,
      self.selectedItemBuilder,
    );
  }

  @override
  String toString() =>
      'MyoroSingularDropdownConfiguration<T>(\n'
      '  onChanged: ${self.onChanged},\n'
      '  checkboxOnChanged: ${self.checkboxOnChanged},\n'
      '  label: ${self.label},\n'
      '  menuTypeEnum: ${self.menuTypeEnum},\n'
      '  allowItemClearing: ${self.allowItemClearing},\n'
      '  selectedItemTextAlign: ${self.selectedItemTextAlign},\n'
      '  menuConfiguration: ${self.menuConfiguration},\n'
      '  selectedItemBuilder: ${self.selectedItemBuilder},\n'
      ');';
}
