import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Creates a [HoverButton] that accepts an icon and/or text.
final class MyoroIconTextHoverButton extends StatelessWidget {
  /// [MyoroHoverButton] configuration.
  final MyoroHoverButtonConfiguration? configuration;

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

  /// Padding of the content in the button.
  final EdgeInsets? padding;

  /// [MainAxisAlignment] of the [Row] holding the items.
  final MainAxisAlignment? mainAxisAlignment;

  /// Function executed when the button is clicked.
  final VoidCallback? onPressed;

  const MyoroIconTextHoverButton({
    super.key,
    this.configuration,
    this.icon,
    this.iconSize,
    this.text,
    this.textStyle,
    this.textAlign,
    this.padding,
    this.mainAxisAlignment,
    this.onPressed,
  }) : assert(
          !(icon == null && text == null),
          '[MyoroIconTextHoverButton]: An [icon] or [text] must be provided.',
        );

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroIconTextHoverButtonThemeExtension>();
    final contentPadding = padding ?? themeExtension.contentPadding;
    final iconNotNull = icon != null;
    final textNotNull = text != null;
    final iconAndTextNotNull = iconNotNull && textNotNull;

    return MyoroHoverButton(
      configuration: configuration,
      onPressed: onPressed,
      builder: (bool hovered, _, __) {
        final actualContentColor = (hovered || configuration?.isHovered == true)
            ? (configuration?.primaryColor ?? themeExtension.primaryColor)
            : (configuration?.onPrimaryColor ?? themeExtension.onPrimaryColor);

        return Padding(
          padding: contentPadding,
          child: Row(
            mainAxisAlignment: mainAxisAlignment ?? themeExtension.mainAxisAlignment,
            children: [
              if (iconNotNull)
                Icon(
                  icon,
                  size: iconSize,
                  color: actualContentColor,
                ),
              if (iconAndTextNotNull) SizedBox(width: themeExtension.spacing),
              if (textNotNull)
                Expanded(
                  child: Text(
                    text!,
                    textAlign: textAlign ?? (iconNotNull ? TextAlign.left : TextAlign.center),
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
