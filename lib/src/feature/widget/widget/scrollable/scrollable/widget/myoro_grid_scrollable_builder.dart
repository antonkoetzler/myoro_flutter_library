part of '../bundle/myoro_scrollable_bundle.dart';

/// A scrollable widget that wraps a [GridView.builder] with gradient overlays.
class MyoroGridScrollableBuilder extends StatelessWidget {
  /// Creates a new instance of [MyoroGridScrollableBuilder].
  const MyoroGridScrollableBuilder({
    super.key,
    this.configuration = const MyoroGridScrollableConfiguration(),
    this.style = const MyoroScrollableStyle(),
    required this.gridDelegate,
    required this.itemBuilder,
    this.itemCount,
  });

  /// Configuration of the scrollable widget.
  final MyoroGridScrollableConfiguration configuration;

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
      configuration: configuration,
      style: style,
      child: _ScrollableHelpers.gridViewBuilder(
        configuration: configuration,
        gridDelegate: gridDelegate,
        itemBuilder: itemBuilder,
        itemCount: itemCount,
      ),
    );
  }
}
