part of 'myoro_hover_button_widget_showcase_bloc.dart';

final class MyoroHoverButtonWidgetShowcaseState extends Equatable {
  /// [MyoroHoverButtonConfiguration.primaryColor].
  final Color? primaryColor;

  /// [MyoroHoverButtonConfiguration.onPrimaryColor].
  final Color? onPrimaryColor;

  /// [MyoroHoverButtonConfiguration.isHovered].
  final bool isHovered;

  /// [MyoroHoverButtonConfiguration.bordered].
  final bool bordered;

  /// [MyoroHoverButtonConfiguration.borderRadius].
  final BorderRadius? borderRadius;

  /// [MyoroHoverButtonConfiguration.tooltip].
  final bool tooltipEnabled;

  /// [MyoroHoverButton.onPressed].
  final bool onPressedEnabled;

  const MyoroHoverButtonWidgetShowcaseState({
    this.primaryColor,
    this.onPrimaryColor,
    this.isHovered = false,
    this.bordered = true,
    this.borderRadius,
    this.tooltipEnabled = false,
    this.onPressedEnabled = true,
  });

  MyoroHoverButtonWidgetShowcaseState copyWith({
    Color? primaryColor,
    bool primaryColorEnabled = true,
    Color? onPrimaryColor,
    bool onPrimaryColorEnabled = true,
    bool? isHovered,
    bool? bordered,
    BorderRadius? borderRadius,
    bool borderRadiusEnabled = true,
    bool? tooltipEnabled,
    bool? onPressedEnabled,
  }) {
    return MyoroHoverButtonWidgetShowcaseState(
      primaryColor:
          primaryColorEnabled ? (primaryColor ?? this.primaryColor) : null,
      onPrimaryColor:
          onPrimaryColorEnabled
              ? (onPrimaryColor ?? this.onPrimaryColor)
              : null,
      isHovered: isHovered ?? this.isHovered,
      bordered: bordered ?? this.bordered,
      borderRadius:
          borderRadiusEnabled ? (borderRadius ?? this.borderRadius) : null,
      tooltipEnabled: tooltipEnabled ?? this.tooltipEnabled,
      onPressedEnabled: onPressedEnabled ?? this.onPressedEnabled,
    );
  }

  @override
  String toString() =>
      ''
      'MyoroHoverButtonWidgetShowcaseState(\n'
      '  primaryColor: $primaryColor,\n'
      '  onPrimaryColor: $onPrimaryColor,\n'
      '  isHovered: $isHovered,\n'
      '  bordered: $bordered,\n'
      '  borderRadius: $borderRadius,\n'
      '  tooltipEnabled: $tooltipEnabled,\n'
      '  onPressedEnabled: $onPressedEnabled,\n'
      ');';

  @override
  List<Object?> get props {
    return [
      primaryColor,
      onPrimaryColor,
      isHovered,
      bordered,
      borderRadius,
      tooltipEnabled,
      onPressedEnabled,
    ];
  }
}
