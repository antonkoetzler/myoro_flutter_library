part of 'myoro_scrollable_view_model.dart';

/// State of [MyoroListScrollable].
class MyoroListScrollableState extends MyoroScrollableState {
  /// Default constructor.
  MyoroListScrollableState(
    super.scrollController,
    super.direction,
    super.thumbVisibility,
    super.reverse,
    super.clipBehavior,
    super.dragStartBehavior,
    super.physics,
    this.itemCount,
    this.itemBuilder,
    this.primary,
    this.shrinkWrap,
    this.findChildIndexCallback,
    this.addAutomaticKeepAlives,
    this.addRepaintBoundaries,
    this.addSemanticIndexes,
    this.cacheExtent,
    this.keyboardDismissBehavior,
    this.restorationId,
    this.hitTestBehavior,
  );

  /// [MyoroListScrollable.itemCount].
  final int itemCount;

  /// [MyoroListScrollable.itemBuilder].
  final NullableIndexedWidgetBuilder itemBuilder;

  /// [MyoroListScrollable.primary].
  final bool primary;

  /// [MyoroListScrollable.shrinkWrap].
  final bool shrinkWrap;

  /// [MyoroListScrollable.findChildIndexCallback].
  final ChildIndexGetter? findChildIndexCallback;

  /// [MyoroListScrollable.addAutomaticKeepAlives].
  final bool addAutomaticKeepAlives;

  /// [MyoroListScrollable.addRepaintBoundaries].
  final bool addRepaintBoundaries;

  /// [MyoroListScrollable.addSemanticIndexes].
  final bool addSemanticIndexes;

  /// [MyoroListScrollable.cacheExtent].
  final double? cacheExtent;

  /// [MyoroListScrollable.keyboardDismissBehavior].
  final ScrollViewKeyboardDismissBehavior keyboardDismissBehavior;

  /// [MyoroListScrollable.restorationId].
  final String? restorationId;

  /// [MyoroListScrollable.hitTestBehavior].
  final HitTestBehavior hitTestBehavior;
}
