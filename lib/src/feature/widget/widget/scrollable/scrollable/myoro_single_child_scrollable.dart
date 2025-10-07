part of 'bundle/myoro_scrollable_bundle.dart';

/// A scrollable widget that wraps a [SingleChildScrollView] with gradient overlays.
class MyoroSingleChildScrollable extends StatelessWidget {
  /// Creates a new instance of [MyoroSingleChildScrollable].
  const MyoroSingleChildScrollable({
    super.key,
    this.configuration = const MyoroSingleChildScrollableConfiguration(),
    this.style = const MyoroScrollableStyle(),
    required this.child,
  });

  /// Configuration of the scrollable widget.
  final MyoroSingleChildScrollableConfiguration configuration;

  /// Style of the scrollable widget.
  final MyoroScrollableStyle style;

  /// The widget to display inside the scrollable area.
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return _Base(
      configuration: configuration,
      style: style,
      child: SingleChildScrollView(
        scrollDirection: configuration.scrollDirection,
        reverse: configuration.reverse,
        physics: configuration.physics,
        controller: configuration.controller,
        primary: configuration.primary,
        child: child,
      ),
    );
  }
}
