part of '../bundle/myoro_scrollable_bundle.dart';

/// Gradient [Widget] that is displayed when the scrollable is scrolled.
class _Gradient<S extends MyoroScrollableStyle> extends StatelessWidget {
  /// Default constructor.
  const _Gradient({required this.isStarting});

  /// Whether the gradient is the starting gradient.
  final bool isStarting;

  /// Build function.
  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroScrollableThemeExtension>();
    final style = context.read<S>();
    final gradientSize = style.gradientSize ?? themeExtension.gradientSize;
    final gradientColor = style.gradientColor ?? themeExtension.gradientColor;

    final viewModel = context.watch<MyoroScrollableViewModel>();
    final state = viewModel.state;
    final direction = state.direction;
    final isVertical = direction.isVertical;
    final reverse = state.reverse;

    // Determine the effective edge position considering reverse.
    final effectiveIsStarting = reverse ? !isStarting : isStarting;

    // Determine gradient alignment based on edge position.
    final (begin, end) = switch ((isVertical, effectiveIsStarting)) {
      (true, true) => (Alignment.topCenter, Alignment.bottomCenter), // Top edge
      (true, false) => (Alignment.bottomCenter, Alignment.topCenter), // Bottom edge
      (false, true) => (Alignment.centerLeft, Alignment.centerRight), // Left edge
      (false, false) => (Alignment.centerRight, Alignment.centerLeft), // Right edge
    };

    return gradientColor == null
        ? const SizedBox.shrink()
        : Positioned(
            // Starting position (top and left).
            top: switch (direction) {
              Axis.vertical => effectiveIsStarting ? 0 : null,
              Axis.horizontal => 0,
            },
            left: switch (direction) {
              Axis.vertical => 0,
              Axis.horizontal => effectiveIsStarting ? 0 : null,
            },

            // Ending position (bottom and right).
            bottom: switch (direction) {
              Axis.vertical => effectiveIsStarting ? null : 0,
              Axis.horizontal => 0,
            },
            right: switch (direction) {
              Axis.vertical => 0,
              Axis.horizontal => effectiveIsStarting ? null : 0,
            },

            // Constrain the dimension perpendicular to scroll direction.
            height: switch (direction) {
              Axis.vertical => gradientSize,
              Axis.horizontal => null,
            },
            width: switch (direction) {
              Axis.vertical => null,
              Axis.horizontal => gradientSize,
            },

            // Gradient.
            child: IgnorePointer(
              child: RotatedBox(
                // 3 turns because [effectiveIsStarting] represents the left side, thus the
                // gradient should go from left to right, so 270 degrees (3 turns) are needed.
                quarterTurns: isVertical
                    ? 0
                    : effectiveIsStarting
                    ? 3
                    : 1,
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(begin: begin, end: end, colors: [gradientColor, MyoroColors.transparent]),
                  ),
                ),
              ),
            ),
          );
  }
}
