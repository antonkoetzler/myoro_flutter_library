import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Creates a [HoverButton] that accepts an icon and/or text.
final class MyoroIconTextHoverButton extends StatelessWidget {
  /// Icon of the button.
  final IconData? icon;

  /// Size of the icon.
  final double? iconSize;

  /// Text of the button.
  final String? text;

  /// Style of the button.
  final TextStyle? textStyle;

  /// Alignment of the text.
  final TextAlign? textAlign;

  /// Color of the border, icon/text, & background when hovered.
  final Color? contentColor;

  /// Builds a rounded border if [true]; no border if [false].
  final bool? bordered;

  /// Border radius of the background.
  final BorderRadius? borderRadius;

  /// Padding of the content in the button.
  final EdgeInsets? padding;

  /// Color of the icon/text when hovered & background when not hovered.
  final Color? backgroundColor;

  /// Function executed when the button is clicked.
  final VoidCallback onPressed;

  const MyoroIconTextHoverButton({
    super.key,
    this.icon,
    this.iconSize,
    this.text,
    this.textStyle,
    this.textAlign,
    this.contentColor,
    this.bordered,
    this.borderRadius,
    this.padding,
    this.backgroundColor,
    required this.onPressed,
  }) : assert(
          !(icon == null && text == null),
          '[MyoroIconTextHoverButton]: An [icon] or [text] must be provided.',
        );

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroIconTextHoverButtonThemeExtension>();

    return MyoroHoverButton(
      contentColor: contentColor,
      backgroundColor: backgroundColor,
      bordered: bordered,
      borderRadius: borderRadius,
      onPressed: onPressed,
      builder: (bool hovered) {
        final actualContentColor = hovered ? (backgroundColor ?? themeExtension.backgroundColor) : (contentColor ?? themeExtension.contentColor);

        return Padding(
          padding: padding ?? themeExtension.contentPadding,
          child: Row(
            spacing: themeExtension.spacing,
            children: [
              if (icon != null)
                Icon(
                  icon,
                  size: iconSize,
                  color: actualContentColor,
                ),
              if (text != null)
                Expanded(
                  child: Text(
                    text!,
                    textAlign: textAlign ?? themeExtension.textAlign,
                    maxLines: themeExtension.textMaxLines,
                    overflow: themeExtension.textOverflow,
                    style: (textStyle ?? themeExtension.textStyle).withColor(
                      actualContentColor,
                    ),
                  ),
                ),
            ],
          ),
        );
      },
    );
  }
}
