part of 'myoro_dropdown_widget_showcases_bloc.dart';

final class MyoroDropdownWidgetShowcasesState extends Equatable {
  /// [MyoroDropdownConfiguration.label].
  final String label;

  /// [MyoroDropdownConfiguration.labelTextStyle].
  final TextStyle? labelTextStyle;

  /// [MyoroDropdownConfiguration.enabled].
  final bool enabled;

  /// [MyoroDropdownConfiguration.allowItemClearing].
  final bool allowItemClearing;

  /// [MyoroDropdownConfiguration.menuMaxHeight].
  final double? menuMaxHeight;

  /// [MyoroDropdownConfiguration.menuSearchCallback].
  final bool menuSearchCallbackEnabled;

  /// [MyoroSingularDropdown.checkboxOnChanged] & [MyoroMultiDropdown.checkboxOnChanged].
  final bool checkboxOnChangedEnabled;

  const MyoroDropdownWidgetShowcasesState({
    this.label = '',
    this.labelTextStyle,
    this.enabled = true,
    this.allowItemClearing = true,
    this.menuMaxHeight,
    this.menuSearchCallbackEnabled = false,
    this.checkboxOnChangedEnabled = false,
  });

  MyoroDropdownWidgetShowcasesState copyWith({
    String? label,
    TextStyle? labelTextStyle,
    bool labelTextStyleEnabled = true,
    bool? enabled,
    bool? allowItemClearing,
    double? menuMaxHeight,
    bool menuMaxHeightEnabled = true,
    bool? menuSearchCallbackEnabled,
    bool? checkboxOnChangedEnabled,
  }) {
    return MyoroDropdownWidgetShowcasesState(
      label: label ?? this.label,
      labelTextStyle: labelTextStyleEnabled ? (labelTextStyle ?? this.labelTextStyle) : null,
      enabled: enabled ?? this.enabled,
      allowItemClearing: allowItemClearing ?? this.allowItemClearing,
      menuMaxHeight: menuMaxHeightEnabled ? (menuMaxHeight ?? this.menuMaxHeight) : null,
      menuSearchCallbackEnabled: menuSearchCallbackEnabled ?? this.menuSearchCallbackEnabled,
      checkboxOnChangedEnabled: checkboxOnChangedEnabled ?? this.checkboxOnChangedEnabled,
    );
  }

  @override
  String toString() => ''
      'MyoroDropdownWidgetShowcasesState(\n'
      '  label: $label,\n'
      '  labelTextStyle: $labelTextStyle,\n'
      '  enabled: $enabled,\n'
      '  allowItemClearing: $allowItemClearing,\n'
      '  menuMaxHeight: $menuMaxHeight,\n'
      '  menuSearchCallbackEnabled: $menuSearchCallbackEnabled,\n'
      '  checkboxOnChangedEnabled: $checkboxOnChangedEnabled,\n'
      ');';

  @override
  List<Object?> get props {
    return [
      label,
      labelTextStyle,
      enabled,
      allowItemClearing,
      menuMaxHeight,
      menuSearchCallbackEnabled,
      checkboxOnChangedEnabled,
    ];
  }
}
