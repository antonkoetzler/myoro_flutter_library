part of 'bundle/myoro_scrollable_bundle.dart';

/// A scrollable widget that wraps a [ListView.builder] with gradient overlays.
class MyoroListScrollableBuilder extends StatelessWidget {
  /// Creates a new instance of [MyoroListScrollableBuilder].
  const MyoroListScrollableBuilder({
    super.key,
    this.configuration = const MyoroListScrollableConfiguration(),
    this.style = const MyoroScrollableStyle(),
    required this.itemBuilder,
    this.itemCount,
    this.itemExtent,
    this.prototypeItem,
  });

  /// Configuration of the scrollable widget.
  final MyoroListScrollableConfiguration configuration;

  /// Style of the scrollable widget.
  final MyoroScrollableStyle style;

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
      configuration: configuration,
      style: style,
      child: _ScrollableHelpers.listViewBuilder(
        configuration: configuration,
        itemBuilder: itemBuilder,
        itemCount: itemCount,
        itemExtent: itemExtent,
        prototypeItem: prototypeItem,
      ),
    );
  }
}
