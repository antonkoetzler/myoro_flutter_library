part of '../bundle/myoro_scrollable_bundle.dart';

/// Base widget that applies gradient overlays to any scrollable widget.
final class _Base extends StatelessWidget {
  const _Base({required this.configuration, required this.style, required this.child});

  final dynamic configuration;
  final MyoroScrollableStyle style;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroScrollableThemeExtension>();
    final gradientConfig = configuration.gradientConfiguration;

    // Get effective style values
    final backgroundColor = style.backgroundColor ?? themeExtension.backgroundColor;
    final gradientTopColor = style.gradientTopColor ?? themeExtension.gradientTopColor;
    final gradientBottomColor = style.gradientBottomColor ?? themeExtension.gradientBottomColor;
    final gradientLeftColor = style.gradientLeftColor ?? themeExtension.gradientLeftColor;
    final gradientRightColor = style.gradientRightColor ?? themeExtension.gradientRightColor;
    final gradientSize = style.gradientSize ?? themeExtension.gradientSize;
    final padding = style.padding ?? themeExtension.padding;
    final margin = style.margin ?? themeExtension.margin;
    final borderRadius = style.borderRadius ?? themeExtension.borderRadius;
    final border = style.border ?? themeExtension.border;
    final boxShadow = style.boxShadow ?? themeExtension.boxShadow;

    Widget content = child;

    // Apply padding if specified
    if (padding != null) {
      content = Padding(padding: padding, child: content);
    }

    // Apply background and border styling
    if (backgroundColor != null || borderRadius != null || border != null || boxShadow != null) {
      content = DecoratedBox(
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: borderRadius,
          border: border,
          boxShadow: boxShadow,
        ),
        child: content,
      );
    }

    // Apply margin if specified
    if (margin != null) {
      content = Padding(padding: margin, child: content);
    }

    // Add gradient overlays if enabled
    if (gradientConfig?.enabled == true) {
      final effectiveStyle = MyoroScrollableStyle(
        backgroundColor: backgroundColor,
        gradientTopColor: gradientTopColor,
        gradientBottomColor: gradientBottomColor,
        gradientLeftColor: gradientLeftColor,
        gradientRightColor: gradientRightColor,
        gradientSize: gradientSize,
        padding: padding,
        margin: margin,
        borderRadius: borderRadius,
        border: border,
        boxShadow: boxShadow,
      );

      content = _GradientOverlay(
        configuration: configuration,
        style: effectiveStyle,
        gradientConfig: gradientConfig!,
        child: content,
      );
    }

    return content;
  }
}
