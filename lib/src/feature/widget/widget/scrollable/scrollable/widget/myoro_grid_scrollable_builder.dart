part of '../bundle/myoro_scrollable_bundle.dart';

/// A scrollable widget that wraps a [GridView.builder] with gradient overlays.
class MyoroGridScrollableBuilder extends StatelessWidget {
  /// Creates a new instance of [MyoroGridScrollableBuilder].
  const MyoroGridScrollableBuilder({
    super.key,
    this.scrollDirection = Axis.vertical,
    this.reverse = false,
    this.physics,
    this.controller,
    this.primary,
    this.shrinkWrap = false,
    this.gradientEnabled = true,
    this.gradientBegin,
    this.gradientEnd,
    this.style = const MyoroScrollableStyle(),
    required this.gridDelegate,
    required this.itemBuilder,
    this.itemCount,
  });

  /// The axis along which the scroll view scrolls.
  final Axis scrollDirection;

  /// Whether the scroll view scrolls in the reading direction.
  final bool reverse;

  /// How the scroll view should respond to user input.
  final ScrollPhysics? physics;

  /// An object that can be used to control the position to which this scroll
  /// view is scrolled.
  final ScrollController? controller;

  /// Whether this is the primary scroll view associated with the parent.
  final bool? primary;

  /// Whether the extent of the scroll view in the [scrollDirection] should be
  /// determined by the contents being viewed.
  final bool shrinkWrap;

  /// Whether gradient overlays are enabled.
  final bool gradientEnabled;

  /// The offset at which stop 0.0 of the gradient is placed.
  final Alignment? gradientBegin;

  /// The offset at which stop 1.0 of the gradient is placed.
  final Alignment? gradientEnd;

  /// Style of the scrollable widget.
  final MyoroScrollableStyle style;

  /// A delegate that controls the layout of the children in the grid.
  final SliverGridDelegate gridDelegate;

  /// Called to build children for the grid.
  final IndexedWidgetBuilder itemBuilder;

  /// The number of items the [itemBuilder] can produce.
  final int? itemCount;

  @override
  Widget build(BuildContext context) {
    return _Base(
      scrollDirection: scrollDirection,
      reverse: reverse,
      physics: physics,
      controller: controller,
      primary: primary,
      shrinkWrap: shrinkWrap,
      gradientEnabled: gradientEnabled,
      gradientBegin: gradientBegin,
      gradientEnd: gradientEnd,
      style: style,
      child: _ScrollableHelpers.gridViewBuilder(
        scrollDirection: scrollDirection,
        reverse: reverse,
        physics: physics,
        controller: controller,
        primary: primary,
        shrinkWrap: shrinkWrap,
        gridDelegate: gridDelegate,
        itemBuilder: itemBuilder,
        itemCount: itemCount,
      ),
    );
  }
}
