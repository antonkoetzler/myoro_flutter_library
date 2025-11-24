part of '../bundle/myoro_scrollable_bundle.dart';

/// A scrollable widget that wraps a [ListView.builder] with gradient overlays.
class MyoroListScrollableBuilder extends StatelessWidget {
  /// Creates a new instance of [MyoroListScrollableBuilder].
  const MyoroListScrollableBuilder({
    super.key,
    this.style = const MyoroScrollableStyle(),
    this.scrollDirection = Axis.vertical,
    this.reverse = false,
    this.physics,
    this.controller,
    this.primary,
    this.shrinkWrap = false,
    this.gradientEnabled = true,
    this.gradientBegin,
    this.gradientEnd,
    required this.itemBuilder,
    this.itemCount,
    this.itemExtent,
    this.prototypeItem,
  });

  /// Style of the scrollable widget.
  final MyoroScrollableStyle style;

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

  /// Called to build children for the list.
  final IndexedWidgetBuilder itemBuilder;

  /// The number of items the [itemBuilder] can produce.
  final int? itemCount;

  /// If non-null, forces the children to have the given extent in the scroll direction.
  final double? itemExtent;

  /// If non-null, forces the children to have the same extent as the given widget in the scroll direction.
  final Widget? prototypeItem;

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
      child: _ScrollableHelpers.listViewBuilder(
        scrollDirection: scrollDirection,
        reverse: reverse,
        physics: physics,
        controller: controller,
        primary: primary,
        shrinkWrap: shrinkWrap,
        itemBuilder: itemBuilder,
        itemCount: itemCount,
        itemExtent: itemExtent,
        prototypeItem: prototypeItem,
        spacing: style.spacing,
      ),
    );
  }
}
