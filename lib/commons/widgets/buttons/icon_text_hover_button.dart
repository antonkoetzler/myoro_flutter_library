import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Creates a [HoverButton] that accepts an icon and/or text.
final class IconTextHoverButton extends StatelessWidget {
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

  /// Color of the icon/text when hovered & background when not hovered.
  final Color? backgroundColor;

  /// Function executed when the button is clicked.
  final VoidCallback onPressed;

  const IconTextHoverButton({
    super.key,
    this.icon,
    this.iconSize,
    this.text,
    this.textStyle,
    this.textAlign,
    this.contentColor,
    this.bordered,
    this.backgroundColor,
    required this.onPressed,
  }) : assert(
          !(icon == null && text == null),
          '[IconTextHoverButton]: An [icon] or [text] must be provided.',
        );

  @override
  Widget build(BuildContext context) {
    return HoverButton(
      contentColor: contentColor,
      backgroundColor: backgroundColor,
      bordered: bordered,
      onPressed: onPressed,
      builder: (bool hovered) {
        final actualContentColor = hovered ? (backgroundColor ?? ColorDesignSystem.primary(context)) : (contentColor ?? ColorDesignSystem.secondary(context));

        return Padding(
          padding: const EdgeInsets.all(5),
          child: Row(
            spacing: 10,
            children: [
              if (icon != null)
                Icon(
                  icon,
                  size: iconSize,
                  color: actualContentColor,
                ),
              if (text != null)
                Text(
                  text!,
                  textAlign: textAlign ?? TextAlign.left,
                  style: (textStyle ?? TypographyDesignSystem.regularMedium(context)).withColor(
                    actualContentColor,
                  ),
                ),
            ],
          ),
        );
      },
    );
  }
}
