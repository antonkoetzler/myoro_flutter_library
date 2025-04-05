part of 'myoro_dropdown_widget_showcase_bloc.dart';

final class MyoroDropdownWidgetShowcaseState extends Equatable {
  static const checkboxOnChangedEnabledDefaultValue = false;
  static const menuMaxHeightDefaultValue = 250.0;
  static const menuMaxHeightMinValue = 100.0;
  static const menuMaxHeightMaxValue = 500.0;

  /// [MyoroDropdownConfiguration.label]
  final String label;

  /// [MyoroDropdownConfiguration.enabled]
  final bool enabled;

  /// [MyoroDropdownConfiguration.allowItemClearing].
  final bool allowItemClearing;

  /// If [MyoroSingularDropdownConfiguration.checkboxOnChanged]/[MyoroMultiDropdownConfiguration.checkboxOnChanged] is provided.
  final bool checkboxOnChangedEnabled;

  /// [MyoroDropdownConfiguration.menuMaxHeight].
  final double menuMaxHeight;

  const MyoroDropdownWidgetShowcaseState({
    this.label = '',
    this.enabled = MyoroDropdownConfiguration.enabledDefaultValue,
    this.allowItemClearing =
        MyoroDropdownConfiguration.allowItemClearingDefaultValue,
    this.checkboxOnChangedEnabled = checkboxOnChangedEnabledDefaultValue,
    this.menuMaxHeight = menuMaxHeightDefaultValue,
  });

  MyoroDropdownWidgetShowcaseState copyWith({
    String? label,
    bool? enabled,
    bool? allowItemClearing,
    bool? checkboxOnChangedEnabled,
    double? menuMaxHeight,
  }) {
    return MyoroDropdownWidgetShowcaseState(
      label: label ?? this.label,
      enabled: enabled ?? this.enabled,
      allowItemClearing: allowItemClearing ?? this.allowItemClearing,
      checkboxOnChangedEnabled:
          checkboxOnChangedEnabled ?? this.checkboxOnChangedEnabled,
      menuMaxHeight: menuMaxHeight ?? this.menuMaxHeight,
    );
  }

  @override
  List<Object?> get props {
    return [
      label,
      enabled,
      allowItemClearing,
      checkboxOnChangedEnabled,
      menuMaxHeight,
    ];
  }

  @override
  String toString() =>
      'MyoroDropdownWidgetShowcaseState(\n'
      '  label: $label,\n'
      '  enabled: $enabled,\n'
      '  allowItemClearing: $allowItemClearing,\n'
      '  checkboxOnChangedEnabled: $checkboxOnChangedEnabled,\n'
      '  menuMaxHeight: $menuMaxHeight,\n'
      ');';
}
