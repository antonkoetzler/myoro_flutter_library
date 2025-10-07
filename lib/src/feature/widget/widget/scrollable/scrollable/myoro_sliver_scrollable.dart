part of 'bundle/myoro_scrollable_bundle.dart';

/// A scrollable widget that wraps a [CustomScrollView] with gradient overlays.
class MyoroSliverScrollable extends StatelessWidget {
  /// Creates a new instance of [MyoroSliverScrollable].
  const MyoroSliverScrollable({
    super.key,
    this.configuration = const MyoroSliverScrollableConfiguration(),
    this.style = const MyoroScrollableStyle(),
    required this.slivers,
  });

  /// Configuration of the scrollable widget.
  final MyoroSliverScrollableConfiguration configuration;

  /// Style of the scrollable widget.
  final MyoroScrollableStyle style;

  /// The list of sliver widgets to display.
  final List<Widget> slivers;

  @override
  Widget build(BuildContext context) {
    return _Base(
      configuration: configuration,
      style: style,
      child: CustomScrollView(
        scrollDirection: configuration.scrollDirection,
        reverse: configuration.reverse,
        controller: configuration.controller,
        primary: configuration.primary,
        physics: configuration.physics,
        shrinkWrap: configuration.shrinkWrap,
        slivers: slivers,
      ),
    );
  }
}
