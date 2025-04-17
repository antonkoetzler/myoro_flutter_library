part of 'myoro_icon_text_hover_button_widget_showcase_bloc.dart';

final class MyoroIconTextHoverButtonWidgetShowcaseState extends Equatable {
  /// [MyoroIconTextHoverButton.icon].
  final IconData? icon;

  /// [MyoroIconTextHoverButton.iconSize].
  final double? iconSize;

  /// [MyoroIconTextHoverButton.text].
  final String text;

  /// [MyoroIconTextHoverButton.textStyle].
  final TextStyle? textStyle;

  /// [MyoroIconTextHoverButton.textAlign].
  final TextAlign? textAlign;

  /// [MyoroIconTextHoverButton.padding].
  final double? padding;

  /// [MyoroIconTextHoverButton.mainAxisAlignment].
  final MainAxisAlignment? mainAxisAlignment;

  /// [MyoroIconTextHoverButton.onPressed].
  final bool onPressedEnabled;

  MyoroIconTextHoverButtonWidgetShowcaseState({
    this.icon,
    this.iconSize,
    this.text = 'Hello, World!',
    this.textStyle,
    this.textAlign,
    this.padding,
    this.mainAxisAlignment,
    this.onPressedEnabled = true,
  }) : assert(!(icon == null && text.isEmpty), '[MyoroIconTextHoverButtonWidgetShowcaseState]: An [icon] or [text] must be provided.');

  MyoroIconTextHoverButtonWidgetShowcaseState copyWith({
    IconData? icon,
    bool iconProvided = true,
    double? iconSize,
    bool iconSizeProvided = true,
    String? text,
    bool textProvided = true,
    TextStyle? textStyle,
    bool textStyleProvided = true,
    TextAlign? textAlign,
    bool textAlignProvided = true,
    double? padding,
    bool paddingProvided = true,
    MainAxisAlignment? mainAxisAlignment,
    bool mainAxisAlignmentProvided = true,
    bool? onPressedEnabled,
  }) {
    icon = iconProvided ? (icon ?? this.icon) : null;
    text = textProvided ? (text ?? this.text) : null;

    final bool iconAndTextNotProvided = icon == null && text!.isEmpty;

    return MyoroIconTextHoverButtonWidgetShowcaseState(
      icon: iconAndTextNotProvided ? null : icon,
      iconSize: iconSizeProvided ? (iconSize ?? this.iconSize) : null,
      text: iconAndTextNotProvided ? 'Hello, World!' : text!,
      textStyle: textStyleProvided ? (textStyle ?? this.textStyle) : null,
      textAlign: textAlignProvided ? (textAlign ?? this.textAlign) : null,
      padding: paddingProvided ? (padding ?? this.padding) : null,
      mainAxisAlignment: mainAxisAlignmentProvided ? (mainAxisAlignment ?? this.mainAxisAlignment) : null,
      onPressedEnabled: onPressedEnabled ?? this.onPressedEnabled,
    );
  }

  @override
  String toString() =>
      ''
      'MyoroIconTextHoverButtonWidgetShowcaseState(\n'
      '  icon: $icon,\n'
      '  iconSize: $iconSize,\n'
      '  text: $text,\n'
      '  textStyle: $textStyle,\n'
      '  textAlign: $textAlign,\n'
      '  padding: $padding,\n'
      '  mainAxisAlignment: $mainAxisAlignment,\n'
      '  onPressedEnabled: $onPressedEnabled,\n'
      ');';

  @override
  List<Object?> get props {
    return [icon, iconSize, text, textStyle, textAlign, padding, mainAxisAlignment, onPressedEnabled];
  }
}
