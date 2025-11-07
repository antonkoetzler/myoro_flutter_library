part of '../bundle/myoro_scrollable_bundle.dart';

/// Base widget that applies gradient overlays to any scrollable widget.
final class _Base extends StatelessWidget {
  const _Base({
    required this.scrollDirection,
    required this.reverse,
    required this.physics,
    required this.controller,
    required this.primary,
    required this.shrinkWrap,
    required this.gradientEnabled,
    required this.gradientBegin,
    required this.gradientEnd,
    required this.style,
    required this.child,
  });

  final Axis scrollDirection;
  final bool reverse;
  final ScrollPhysics? physics;
  final ScrollController? controller;
  final bool? primary;
  final bool shrinkWrap;
  final bool gradientEnabled;
  final Alignment? gradientBegin;
  final Alignment? gradientEnd;
  final MyoroScrollableStyle style;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroScrollableThemeExtension>();
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

    return InheritedProvider.value(
      value: style,
      child: _GradientOverlay(
        scrollDirection: scrollDirection,
        style: effectiveStyle,
        gradientEnabled: gradientEnabled,
        gradientBegin: gradientBegin,
        gradientEnd: gradientEnd,
        child: child,
      ),
    );
  }
}
