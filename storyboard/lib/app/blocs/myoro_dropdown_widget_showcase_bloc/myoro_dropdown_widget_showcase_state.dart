part of 'myoro_dropdown_widget_showcase_bloc.dart';

final class MyoroDropdownWidgetShowcaseState extends Equatable {
  /// [MyoroDropdown.label].
  final String? label;

  /// To manage whether or not [MyoroDropdown.label] is null or not.
  final bool labelEnabled;

  /// [MyoroDropdown.labelTextStyle].
  final TextStyle? labelTextStyle;

  /// To manage whether or not [MyoroDropdown.labelTextStyle] is null or null.
  final bool labelTextStyleEnabled;

  /// [MyoroDropdown.enabled].
  final bool enabled;

  /// [MyoroDropdown.enableMultiSelection].
  final bool enableMultiSelection;

  /// [MyoroDropdown.showClearTextButton].
  final bool showClearTextButton;

  /// [MyoroDropdown.searchCallback].
  final bool searchCallbackEnabled;

  /// [MyoroDropdown.checkboxOnChanged];
  final bool checkboxOnChangedEnabled;

  const MyoroDropdownWidgetShowcaseState({
    this.label,
    this.labelEnabled = false,
    this.labelTextStyle,
    this.labelTextStyleEnabled = false,
    this.enabled = true,
    this.enableMultiSelection = false,
    this.showClearTextButton = false,
    this.searchCallbackEnabled = false,
    this.checkboxOnChangedEnabled = false,
  });

  MyoroDropdownWidgetShowcaseState copyWith({
    String? label,
    bool? labelEnabled,
    TextStyle? labelTextStyle,
    bool? labelTextStyleEnabled,
    bool? enabled,
    bool? enableMultiSelection,
    bool? showClearTextButton,
    bool? searchCallbackEnabled,
    bool? checkboxOnChangedEnabled,
  }) {
    labelEnabled = labelEnabled ?? this.labelEnabled;
    labelTextStyleEnabled = labelTextStyleEnabled ?? this.labelTextStyleEnabled;

    return MyoroDropdownWidgetShowcaseState(
      label: labelEnabled ? (label ?? this.label) : null,
      labelEnabled: labelEnabled,
      labelTextStyle: labelTextStyleEnabled ? (labelTextStyle ?? this.labelTextStyle) : null,
      labelTextStyleEnabled: labelTextStyleEnabled,
      enabled: enabled ?? this.enabled,
      enableMultiSelection: enableMultiSelection ?? this.enableMultiSelection,
      showClearTextButton: showClearTextButton ?? this.showClearTextButton,
      searchCallbackEnabled: searchCallbackEnabled ?? this.searchCallbackEnabled,
      checkboxOnChangedEnabled: checkboxOnChangedEnabled ?? this.checkboxOnChangedEnabled,
    );
  }

  @override
  String toString() => ''
      'MyoroDropdownWidgetShowcaseState(\n'
      '  label: $label,\n'
      '  labelEnabled: $labelEnabled,\n'
      '  labelTextStyle: $labelTextStyle,\n'
      '  labelTextStyleEnabled: $labelTextStyleEnabled,\n'
      '  enabled: $enabled,\n'
      '  enableMultiSelection: $enableMultiSelection,\n'
      '  showClearTextButton: $showClearTextButton,\n'
      '  searchCallbackEnabled: $searchCallbackEnabled,\n'
      '  checkboxOnChangedEnabled: $checkboxOnChangedEnabled,\n'
      ');';

  @override
  List<Object?> get props {
    return [
      label,
      labelEnabled,
      labelTextStyle,
      labelTextStyleEnabled,
      enabled,
      enableMultiSelection,
      showClearTextButton,
      searchCallbackEnabled,
      checkboxOnChangedEnabled,
    ];
  }
}
