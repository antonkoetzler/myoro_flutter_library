part of 'myoro_scrollable_view_model.dart';

/// State of [MyoroSingleChildScrollable].
class MyoroSingleChildScrollableState extends MyoroScrollableState {
  /// Default constructor.
  MyoroSingleChildScrollableState(
    super.scrollController,
    super.direction,
    super.thumbVisibility,
    super.reverse,
    super.clipBehavior,
    super.dragStartBehavior,
    super.physics,
    this.child,
  );

  /// [MyoroSingleChildScrollable.child].
  final Widget child;
}
