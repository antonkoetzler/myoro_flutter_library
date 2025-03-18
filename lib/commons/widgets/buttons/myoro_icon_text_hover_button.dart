import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
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
  final String text;

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

  MyoroIconTextHoverButton({
    super.key,
    this.configuration,
    this.icon,
    this.iconSize,
    this.text = '',
    this.textStyle,
    this.textAlign,
    this.padding,
    this.mainAxisAlignment,
    this.onPressed,
  }) : assert(
          !(icon == null && text.isEmpty),
          '[MyoroIconTextHoverButton]: An [icon] or [text] must be provided.',
        );

  static Finder finder({
    MyoroHoverButtonConfiguration? configuration,
    bool configurationEnabled = false,
    Color? primaryColor,
    bool primaryColorEnabled = false,
    Color? onPrimaryColor,
    bool onPrimaryColorEnabled = false,
    bool? isHovered,
    bool isHoveredEnabled = false,
    bool? bordered,
    bool borderedEnabled = false,
    BorderRadius? borderRadius,
    bool borderRadiusEnabled = false,
    String? tooltip,
    bool tooltipEnabled = false,
    MyoroHoverButtonOnHover? onHover,
    bool onHoverEnabled = false,
    IconData? icon,
    bool iconEnabled = false,
    double? iconSize,
    bool iconSizeEnabled = false,
    String? text,
    bool textEnabled = false,
    TextStyle? textStyle,
    bool textStyleEnabled = false,
    TextAlign? textAlign,
    bool textAlignEnabled = false,
    EdgeInsets? padding,
    bool paddingEnabled = false,
    MainAxisAlignment? mainAxisAlignment,
    bool mainAxisAlignmentEnabled = false,
    VoidCallback? onPressed,
    bool onPressedEnabled = false,
  }) {
    return find.byWidgetPredicate(
      (Widget w) =>
          w is MyoroIconTextHoverButton &&
          (configurationEnabled ? w.configuration == configuration : true) &&
          (primaryColorEnabled
              ? w.configuration?.primaryColor == primaryColor
              : true) &&
          (onPrimaryColorEnabled
              ? w.configuration?.onPrimaryColor == onPrimaryColor
              : true) &&
          (isHoveredEnabled ? w.configuration?.isHovered == isHovered : true) &&
          (borderedEnabled ? w.configuration?.bordered == bordered : true) &&
          (borderRadiusEnabled
              ? w.configuration?.borderRadius == borderRadius
              : true) &&
          (tooltipEnabled ? w.configuration?.tooltip == tooltip : true) &&
          (onHoverEnabled ? w.configuration?.onHover == onHover : true) &&
          (iconEnabled ? w.icon == icon : true) &&
          (iconSizeEnabled ? w.iconSize == iconSize : true) &&
          (textEnabled ? w.text == text : true) &&
          (textStyleEnabled ? w.textStyle == textStyle : true) &&
          (textAlignEnabled ? w.textAlign == textAlign : true) &&
          (paddingEnabled ? w.padding == padding : true) &&
          (mainAxisAlignmentEnabled
              ? w.mainAxisAlignment == mainAxisAlignment
              : true) &&
          (onPressedEnabled ? w.onPressed == onPressed : true),
    );
  }

  @override
  Widget build(BuildContext context) {
    final themeExtension =
        context.resolveThemeExtension<MyoroIconTextHoverButtonThemeExtension>();
    final contentPadding = padding ?? themeExtension.contentPadding;
    final iconProvided = icon != null;
    final textProvided = text.isNotEmpty;
    final iconAndTextProvided = iconProvided && textProvided;

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
            mainAxisAlignment:
                mainAxisAlignment ?? themeExtension.mainAxisAlignment,
            children: [
              if (iconProvided)
                Icon(
                  icon,
                  size: iconSize,
                  color: actualContentColor,
                ),
              if (iconAndTextProvided) SizedBox(width: themeExtension.spacing),
              if (textProvided)
                Expanded(
                  child: Text(
                    text,
                    textAlign: textAlign ??
                        (iconProvided ? TextAlign.left : TextAlign.center),
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
