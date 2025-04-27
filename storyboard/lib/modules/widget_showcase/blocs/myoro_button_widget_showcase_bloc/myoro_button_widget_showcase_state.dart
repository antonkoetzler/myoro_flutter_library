part of 'myoro_button_widget_showcase_bloc.dart';

final class MyoroButtonWidgetShowcaseState extends Equatable {
  static const backgroundColorBuilderEnabledDefaultValue = false;
  static const borderBuilderEnabledDefaultValue = false;
  static const onTapDownEnabledDefaultValue = false;
  static const onTapUpEnabledDefaultValue = false;

  /// [MyoroButtonConfiguration.cursor]
  final MouseCursor? cursor;

  /// [MyoroButtonConfiguration.borderRadius]
  final double? borderRadius;

  /// [MyoroButtonConfiguration.backgroundColorBuilder]
  final bool backgroundColorBuilderEnabled;
  final Color? idleBackgroundColor;
  final Color? hoverBackgroundColor;
  final Color? tapBackgroundColor;

  /// [MyoroButtonConfiguration.borderBuilder]
  final bool borderBuilderEnabled;
  final double? borderWidth;
  final Color? idleBorderColor;
  final Color? hoverBorderColor;
  final Color? tapBorderColor;

  /// [MyoroButtonConfiguration.onTapDown]
  final bool onTapDownEnabled;

  /// [MyoroButtonConfiguration.onTapUp]
  final bool onTapUpEnabled;

  const MyoroButtonWidgetShowcaseState({
    this.cursor,
    this.borderRadius,
    this.backgroundColorBuilderEnabled = backgroundColorBuilderEnabledDefaultValue,
    this.idleBackgroundColor,
    this.hoverBackgroundColor,
    this.tapBackgroundColor,
    this.borderBuilderEnabled = borderBuilderEnabledDefaultValue,
    this.borderWidth,
    this.idleBorderColor,
    this.hoverBorderColor,
    this.tapBorderColor,
    this.onTapDownEnabled = onTapDownEnabledDefaultValue,
    this.onTapUpEnabled = onTapUpEnabledDefaultValue,
  });

  MyoroButtonWidgetShowcaseState copyWith({
    MouseCursor? cursor,
    bool cursorProvided = true,
    double? borderRadius,
    bool borderRadiusProvided = true,
    bool? backgroundColorBuilderEnabled,
    Color? idleBackgroundColor,
    bool idleBackgroundColorProvided = true,
    Color? hoverBackgroundColor,
    bool hoverBackgroundColorProvided = true,
    Color? tapBackgroundColor,
    bool tapBackgroundColorProvided = true,
    bool? borderBuilderEnabled,
    double? borderWidth,
    bool borderWidthProvided = true,
    Color? idleBorderColor,
    bool idleBorderColorProvided = true,
    Color? hoverBorderColor,
    bool hoverBorderColorProvided = true,
    Color? tapBorderColor,
    bool tapBorderColorProvided = true,
    bool? onTapDownEnabled,
    bool? onTapUpEnabled,
  }) {
    return MyoroButtonWidgetShowcaseState(
      cursor: cursorProvided ? (cursor ?? this.cursor) : null,
      borderRadius: borderRadiusProvided ? (borderRadius ?? this.borderRadius) : null,
      backgroundColorBuilderEnabled:
          backgroundColorBuilderEnabled ?? this.backgroundColorBuilderEnabled,
      idleBackgroundColor:
          idleBackgroundColorProvided ? (idleBackgroundColor ?? this.idleBackgroundColor) : null,
      hoverBackgroundColor:
          hoverBackgroundColorProvided ? (hoverBackgroundColor ?? this.hoverBackgroundColor) : null,
      tapBackgroundColor:
          tapBackgroundColorProvided ? (tapBackgroundColor ?? this.tapBackgroundColor) : null,
      borderBuilderEnabled: borderBuilderEnabled ?? this.borderBuilderEnabled,
      borderWidth: borderWidthProvided ? (borderWidth ?? this.borderWidth) : null,
      idleBorderColor: idleBorderColorProvided ? (idleBorderColor ?? this.idleBorderColor) : null,
      hoverBorderColor:
          hoverBorderColorProvided ? (hoverBorderColor ?? this.hoverBorderColor) : null,
      tapBorderColor: tapBorderColorProvided ? (tapBorderColor ?? this.tapBorderColor) : null,
      onTapDownEnabled: onTapDownEnabled ?? this.onTapDownEnabled,
      onTapUpEnabled: onTapUpEnabled ?? this.onTapUpEnabled,
    );
  }

  @override
  List<Object?> get props {
    return [
      cursor,
      borderRadius,
      backgroundColorBuilderEnabled,
      idleBackgroundColor,
      hoverBackgroundColor,
      tapBackgroundColor,
      borderBuilderEnabled,
      borderWidth,
      idleBorderColor,
      hoverBorderColor,
      tapBorderColor,
      onTapDownEnabled,
      onTapUpEnabled,
    ];
  }

  @override
  String toString() =>
      'MyoroButtonWidgetShowcaseState(\n'
      '  cursor: $cursor,\n'
      '  borderRadius: $borderRadius,\n'
      '  backgroundColorBuilderEnabled: $backgroundColorBuilderEnabled,\n'
      '  idleBackgroundColor: $idleBackgroundColor,\n'
      '  hoverBackgroundColor: $hoverBackgroundColor,\n'
      '  tapBackgroundColor: $tapBackgroundColor,\n'
      '  borderBuilderEnabled: $borderBuilderEnabled,\n'
      '  borderWidth: $borderWidth,\n'
      '  idleBorderColor: $idleBorderColor,\n'
      '  hoverBorderColor: $hoverBorderColor,\n'
      '  tapBorderColor: $tapBorderColor,\n'
      '  onTapDownEnabled: $onTapDownEnabled,\n'
      '  onTapUpEnabled: $onTapUpEnabled,\n'
      ');';
}
