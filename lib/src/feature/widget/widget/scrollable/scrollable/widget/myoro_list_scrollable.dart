part of '../bundle/myoro_scrollable_bundle.dart';

/// A scrollable widget that wraps a [ListView] with gradient overlays.
class MyoroListScrollable extends StatelessWidget {
  /// Creates a new instance of [MyoroListScrollable].
  const MyoroListScrollable({
    super.key,
    this.configuration = const MyoroListScrollableConfiguration(),
    this.style = const MyoroScrollableStyle(),
    required this.children,
  });

  /// Configuration of the scrollable widget.
  final MyoroListScrollableConfiguration configuration;

  /// Style of the scrollable widget.
  final MyoroScrollableStyle style;

  /// The list of widgets to display.
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return _Base(
      configuration: configuration,
      style: style,
      child: _ScrollableHelpers.listView(configuration: configuration, children: children),
    );
  }
}
