part of '../bundle/myoro_scrollable_bundle.dart';

/// Internal widget that handles gradient overlays for scroll indicators.
final class _GradientOverlay extends StatefulWidget {
  const _GradientOverlay({
    required this.configuration,
    required this.style,
    required this.gradientConfig,
    required this.child,
  });

  final MyoroScrollableConfigurationMixin configuration;
  final MyoroScrollableStyle style;
  final MyoroScrollableGradientConfiguration gradientConfig;
  final Widget child;

  @override
  State<_GradientOverlay> createState() => _GradientOverlayState();
}

final class _GradientOverlayState extends State<_GradientOverlay> {
  bool _showTopGradient = false;
  bool _showBottomGradient = false;
  bool _showLeftGradient = false;
  bool _showRightGradient = false;

  bool _onScroll(ScrollNotification notification) {
    if (notification is ScrollUpdateNotification) {
      final position = notification.metrics;
      final isVertical = widget.configuration.scrollDirection == Axis.vertical;

      if (isVertical) {
        final showTop = position.pixels > position.minScrollExtent;
        final showBottom = position.pixels < position.maxScrollExtent;

        if (showTop != _showTopGradient || showBottom != _showBottomGradient) {
          setState(() {
            _showTopGradient = showTop;
            _showBottomGradient = showBottom;
          });
        }
      } else {
        final showLeft = position.pixels > position.minScrollExtent;
        final showRight = position.pixels < position.maxScrollExtent;

        if (showLeft != _showLeftGradient || showRight != _showRightGradient) {
          setState(() {
            _showLeftGradient = showLeft;
            _showRightGradient = showRight;
          });
        }
      }
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroScrollableThemeExtension>();
    final style = context.watch<MyoroScrollableStyle>();

    final isVertical = widget.configuration.scrollDirection == Axis.vertical;
    final gradientSize = style.gradientSize ?? themeExtension.gradientSize ?? 20.0;
    final gradientColor = style.gradientColor ?? themeExtension.gradientColor ?? Colors.white;

    // Get effective colors from style or use defaults
    final topColor = style.gradientTopColor ?? themeExtension.gradientTopColor ?? gradientColor;
    final bottomColor = style.gradientBottomColor ?? themeExtension.gradientBottomColor ?? gradientColor;
    final leftColor = style.gradientLeftColor ?? themeExtension.gradientLeftColor ?? gradientColor;
    final rightColor = style.gradientRightColor ?? themeExtension.gradientRightColor ?? gradientColor;

    final Widget content = NotificationListener<ScrollNotification>(onNotification: _onScroll, child: widget.child);

    if (isVertical) {
      // Vertical scrolling - top and bottom gradients
      return Stack(
        children: [
          content,
          if (_showTopGradient)
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              height: gradientSize,
              child: _buildGradient(
                begin: widget.gradientConfig.begin ?? Alignment.topCenter,
                end: widget.gradientConfig.end ?? Alignment.bottomCenter,
                color: topColor,
              ),
            ),
          if (_showBottomGradient)
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              height: gradientSize,
              child: _buildGradient(
                begin: widget.gradientConfig.begin ?? Alignment.bottomCenter,
                end: widget.gradientConfig.end ?? Alignment.topCenter,
                color: bottomColor,
              ),
            ),
        ],
      );
    } else {
      // Horizontal scrolling - left and right gradients
      return Stack(
        children: [
          content,
          if (_showLeftGradient)
            Positioned(
              top: 0,
              bottom: 0,
              left: 0,
              width: gradientSize,
              child: _buildGradient(
                begin: widget.gradientConfig.begin ?? Alignment.centerLeft,
                end: widget.gradientConfig.end ?? Alignment.centerRight,
                color: leftColor,
              ),
            ),
          if (_showRightGradient)
            Positioned(
              top: 0,
              bottom: 0,
              right: 0,
              width: gradientSize,
              child: _buildGradient(
                begin: widget.gradientConfig.begin ?? Alignment.centerRight,
                end: widget.gradientConfig.end ?? Alignment.centerLeft,
                color: rightColor,
              ),
            ),
        ],
      );
    }
  }

  Widget _buildGradient({required Alignment begin, required Alignment end, required Color color}) {
    return IgnorePointer(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(begin: begin, end: end, colors: [color, color.withValues(alpha: 0.0)]),
        ),
      ),
    );
  }
}
