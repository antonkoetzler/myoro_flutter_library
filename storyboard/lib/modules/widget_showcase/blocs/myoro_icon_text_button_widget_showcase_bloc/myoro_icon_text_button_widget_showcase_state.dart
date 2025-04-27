part of 'myoro_icon_text_button_widget_showcase_bloc.dart';

final class MyoroIconTextButtonWidgetShowcaseState extends Equatable {
  static const contentColorBuilderEnabledDefaultValue = false;
  static const textDefaultValue = 'MyoroIconTextButton!';

  /// [MyoroIconTextButtonConfiguration.invert]
  final bool invert;

  /// [MyoroIconTextButtonConfiguration.spacing]
  final double spacing;

  /// [MyoroIconTextButtonConfiguration.padding]
  final EdgeInsets padding;

  /// [MyoroIconTextButtonConfiguration.contentColorBuilder]
  final bool contentColorBuilderEnabled;
  final Color? idleContentColor;
  final Color? hoverContentColor;
  final Color? tapContentColor;

  /// [MyoroIconTextButtonConfiguration.iconConfiguration]
  final IconData? icon;
  final double? iconSize;

  /// [MyoroIconTextButtonConfiguration.textConfiguration].
  final String text;
  final int textMaxLines;
  final TextOverflow textOverflow;
  final TextAlign textAlignment;
  final TextStyle? textStyle;

  const MyoroIconTextButtonWidgetShowcaseState({
    this.invert = MyoroIconTextButtonConfiguration.invertDefaultValue,
    this.spacing = MyoroIconTextButtonConfiguration.spacingDefaultValue,
    this.padding = MyoroIconTextButtonConfiguration.paddingDefaultValue,
    this.contentColorBuilderEnabled = contentColorBuilderEnabledDefaultValue,
    this.idleContentColor,
    this.hoverContentColor,
    this.tapContentColor,
    this.icon,
    this.iconSize,
    this.text = textDefaultValue,
    this.textMaxLines = MyoroIconTextButtonTextConfiguration.maxLinesDefaultValue,
    this.textOverflow = MyoroIconTextButtonTextConfiguration.overflowDefaultValue,
    this.textAlignment = MyoroIconTextButtonTextConfiguration.alignmentDefaultValue,
    this.textStyle,
  });

  MyoroIconTextButtonWidgetShowcaseState copyWith({
    bool? invert,
    double? spacing,
    EdgeInsets? padding,
    bool? contentColorBuilderEnabled,
    Color? idleContentColor,
    bool idleContentColorProvided = true,
    Color? hoverContentColor,
    bool hoverContentColorProvided = true,
    Color? tapContentColor,
    bool tapContentColorProvided = true,
    IconData? icon,
    bool iconProvided = true,
    double? iconSize,
    bool iconSizeProvided = true,
    String? text,
    int? textMaxLines,
    TextOverflow? textOverflow,
    TextAlign? textAlignment,
    TextStyle? textStyle,
    bool textStyleProvided = true,
  }) {
    return MyoroIconTextButtonWidgetShowcaseState(
      invert: invert ?? this.invert,
      spacing: spacing ?? this.spacing,
      padding: padding ?? this.padding,
      contentColorBuilderEnabled: contentColorBuilderEnabled ?? this.contentColorBuilderEnabled,
      idleContentColor:
          idleContentColorProvided ? (idleContentColor ?? this.idleContentColor) : null,
      hoverContentColor:
          hoverContentColorProvided ? (hoverContentColor ?? this.hoverContentColor) : null,
      tapContentColor: tapContentColorProvided ? (tapContentColor ?? this.tapContentColor) : null,
      icon: iconProvided ? (icon ?? this.icon) : null,
      iconSize: iconSizeProvided ? (iconSize ?? this.iconSize) : null,
      text: text ?? this.text,
      textMaxLines: textMaxLines ?? this.textMaxLines,
      textOverflow: textOverflow ?? this.textOverflow,
      textAlignment: textAlignment ?? this.textAlignment,
      textStyle: textStyleProvided ? (textStyle ?? this.textStyle) : null,
    );
  }

  @override
  List<Object?> get props {
    return [
      invert,
      spacing,
      padding,
      contentColorBuilderEnabled,
      idleContentColor,
      hoverContentColor,
      tapContentColor,
      icon,
      iconSize,
      text,
      textMaxLines,
      textOverflow,
      textAlignment,
      textStyle,
    ];
  }

  @override
  String toString() =>
      'MyoroIconTextButtonWidgetShowcaseState(\n'
      '  invert: $invert,\n'
      '  spacing: $spacing,\n'
      '  padding: $padding,\n'
      '  contentColorBuilderEnabled: $contentColorBuilderEnabled,\n'
      '  idleContentColor: $idleContentColor,\n'
      '  hoverContentColor: $hoverContentColor,\n'
      '  tapContentColor: $tapContentColor,\n'
      '  icon: $icon,\n'
      '  iconSize: $iconSize,\n'
      '  text: $text,\n'
      '  textMaxLines: $textMaxLines,\n'
      '  textOverflow: $textOverflow,\n'
      '  textAlignment: $textAlignment,\n'
      '  textStyle: $textStyle,\n'
      ');';
}
