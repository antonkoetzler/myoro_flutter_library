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
  }) : assert(
          !(icon == null && text.isEmpty),
          '[MyoroIconTextHoverButtonWidgetShowcaseState]: An [icon] or [text] must be provided.',
        );

  MyoroIconTextHoverButtonWidgetShowcaseState copyWith({
    IconData? icon,
    bool iconEnabled = true,
    double? iconSize,
    bool iconSizeEnabled = true,
    String? text,
    bool textEnabled = true,
    TextStyle? textStyle,
    bool textStyleEnabled = true,
    TextAlign? textAlign,
    bool textAlignEnabled = true,
    double? padding,
    bool paddingEnabled = true,
    MainAxisAlignment? mainAxisAlignment,
    bool mainAxisAlignmentEnabled = true,
    bool? onPressedEnabled,
  }) {
    icon = iconEnabled ? (icon ?? this.icon) : null;
    text = textEnabled ? (text ?? this.text) : null;

    final bool iconAndTextNotProvided = icon == null && text!.isEmpty;

    return MyoroIconTextHoverButtonWidgetShowcaseState(
      icon: iconAndTextNotProvided ? null : icon,
      iconSize: iconSizeEnabled ? (iconSize ?? this.iconSize) : null,
      text: iconAndTextNotProvided ? 'Hello, World!' : text!,
      textStyle: textStyleEnabled ? (textStyle ?? this.textStyle) : null,
      textAlign: textAlignEnabled ? (textAlign ?? this.textAlign) : null,
      padding: paddingEnabled ? (padding ?? this.padding) : null,
      mainAxisAlignment: mainAxisAlignmentEnabled ? (mainAxisAlignment ?? this.mainAxisAlignment) : null,
      onPressedEnabled: onPressedEnabled ?? this.onPressedEnabled,
    );
  }

  @override
  String toString() => ''
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
    return [
      icon,
      iconSize,
      text,
      textStyle,
      textAlign,
      padding,
      mainAxisAlignment,
      onPressedEnabled,
    ];
  }
}
