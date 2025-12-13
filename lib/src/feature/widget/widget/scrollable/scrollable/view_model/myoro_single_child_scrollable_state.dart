part of 'myoro_scrollable_view_model.dart';

/// State of [MyoroSingleChildScrollableViewModel].
class MyoroSingleChildScrollableState extends MyoroScrollableState {
  /// Default constructor.
  MyoroSingleChildScrollableState(
    super.scrollController,
    super.direction,
    super.reverse,
    super.clipBehavior,
    super.dragStartBehavior,
    super.physics,
    this.child,
  );

  /// [MyoroSingleChildScrollable.child].
  final Widget child;
}
