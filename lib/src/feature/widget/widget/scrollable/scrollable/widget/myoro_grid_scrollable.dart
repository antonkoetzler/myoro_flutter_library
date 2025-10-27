part of '../bundle/myoro_scrollable_bundle.dart';

/// A scrollable widget that wraps a [GridView] with gradient overlays.
class MyoroGridScrollable extends StatelessWidget {
  /// Creates a new instance of [MyoroGridScrollable].
  const MyoroGridScrollable({
    super.key,
    this.configuration = const MyoroGridScrollableConfiguration(),
    this.style = const MyoroScrollableStyle(),
    required this.gridDelegate,
    required this.children,
  });

  /// Configuration of the scrollable widget.
  final MyoroGridScrollableConfiguration configuration;

  /// Style of the scrollable widget.
  final MyoroScrollableStyle style;

  /// A delegate that controls the layout of the children in the grid.
  final SliverGridDelegate gridDelegate;

  /// The list of widgets to display.
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return _Base(
      configuration: configuration,
      style: style,
      child: _ScrollableHelpers.gridView(configuration: configuration, gridDelegate: gridDelegate, children: children),
    );
  }
}
