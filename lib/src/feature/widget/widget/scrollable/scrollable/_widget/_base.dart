part of '../bundle/myoro_scrollable_bundle.dart';

/// Base widget that applies gradient overlays to any scrollable widget.
final class _Base extends StatelessWidget {
  const _Base({required this.configuration, required this.style, required this.child});

  final MyoroScrollableConfigurationMixin configuration;
  final MyoroScrollableStyle style;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return InheritedProvider.value(
      value: style,
      child: Builder(
        builder: (context) {
          final themeExtension = context.resolveThemeExtension<MyoroScrollableThemeExtension>();
          final style = context.watch<MyoroScrollableStyle>();

          // Get effective gradient style values
          final gradientTopColor = style.gradientTopColor ?? themeExtension.gradientTopColor;
          final gradientBottomColor = style.gradientBottomColor ?? themeExtension.gradientBottomColor;
          final gradientLeftColor = style.gradientLeftColor ?? themeExtension.gradientLeftColor;
          final gradientRightColor = style.gradientRightColor ?? themeExtension.gradientRightColor;
          final gradientSize = style.gradientSize ?? themeExtension.gradientSize;
          final gradientColor = style.gradientColor ?? themeExtension.gradientColor;

          // Create effective style for gradient overlay
          final effectiveStyle = MyoroScrollableStyle(
            gradientTopColor: gradientTopColor,
            gradientBottomColor: gradientBottomColor,
            gradientLeftColor: gradientLeftColor,
            gradientRightColor: gradientRightColor,
            gradientSize: gradientSize,
            gradientColor: gradientColor,
          );

          // Always apply gradient overlays (gradient is always enabled by default)
          return _GradientOverlay(
            configuration: configuration,
            style: effectiveStyle,
            gradientConfig: configuration.gradientConfiguration ?? const MyoroScrollableGradientConfiguration(),
            child: child,
          );
        },
      ),
    );
  }
}
