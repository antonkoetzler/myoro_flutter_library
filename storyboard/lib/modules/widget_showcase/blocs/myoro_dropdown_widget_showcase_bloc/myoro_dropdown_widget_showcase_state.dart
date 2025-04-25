part of 'myoro_dropdown_widget_showcase_bloc.dart';

final class MyoroDropdownWidgetShowcaseState extends Equatable {
  static const checkboxOnChangedEnabledDefaultValue = false;

  /// [MyoroDropdownConfiguration.label]
  final String label;

  /// [MyoroDropdownConfiguration.enabled]
  final bool enabled;

  /// [MyoroDropdownConfiguration.allowItemClearing].
  final bool allowItemClearing;

  /// If [MyoroSingularDropdownConfiguration.checkboxOnChanged]/[MyoroMultiDropdownConfiguration.checkboxOnChanged] is provided.
  final bool checkboxOnChangedEnabled;

  const MyoroDropdownWidgetShowcaseState({
    this.label = '',
    this.enabled = MyoroDropdownConfiguration.enabledDefaultValue,
    this.allowItemClearing = MyoroDropdownConfiguration.allowItemClearingDefaultValue,
    this.checkboxOnChangedEnabled = checkboxOnChangedEnabledDefaultValue,
  });

  MyoroDropdownWidgetShowcaseState copyWith({
    String? label,
    bool? enabled,
    bool? allowItemClearing,
    bool? checkboxOnChangedEnabled,
  }) {
    return MyoroDropdownWidgetShowcaseState(
      label: label ?? this.label,
      enabled: enabled ?? this.enabled,
      allowItemClearing: allowItemClearing ?? this.allowItemClearing,
      checkboxOnChangedEnabled: checkboxOnChangedEnabled ?? this.checkboxOnChangedEnabled,
    );
  }

  @override
  List<Object?> get props {
    return [label, enabled, allowItemClearing, checkboxOnChangedEnabled];
  }

  @override
  String toString() =>
      'MyoroDropdownWidgetShowcaseState(\n'
      '  label: $label,\n'
      '  enabled: $enabled,\n'
      '  allowItemClearing: $allowItemClearing,\n'
      '  checkboxOnChangedEnabled: $checkboxOnChangedEnabled,\n'
      ');';
}
