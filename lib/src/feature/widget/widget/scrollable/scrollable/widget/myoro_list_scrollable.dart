part of '../bundle/myoro_scrollable_bundle.dart';

/// [ListView] widget of MFL.
class MyoroListScrollable extends _Base {
  /// Default value of [primary].
  static const primaryDefaultValue = false;

  /// Default value of [shrinkWrap].
  static const shrinkWrapDefaultValue = false;

  /// Default value of [addAutomaticKeepAlives].
  static const addAutomaticKeepAlivesDefaultValue = true;

  /// Default value of [addRepaintBoundaries].
  static const addRepaintBoundariesDefaultValue = true;

  /// Default value of [addSemanticIndexes].
  static const addSemanticIndexesDefaultValue = true;

  /// Default value of [keyboardDismissBehavior].
  static const keyboardDismissBehaviorDefaultValue = ScrollViewKeyboardDismissBehavior.manual;

  /// Default value of [hitTestBehavior].
  static const hitTestBehaviorDefaultValue = HitTestBehavior.deferToChild;

  /// Default constructor.
  const MyoroListScrollable({
    super.key,
    super.style,
    super.controller,
    super.direction,
    super.reverse,
    super.clipBehavior,
    super.dragStartBehavior,
    super.physics,
    this.itemCount,
    required this.itemBuilder,
    this.primary = primaryDefaultValue,
    this.shrinkWrap = shrinkWrapDefaultValue,
    this.itemExtent,
    this.itemExtentBuilder,
    this.prototypeItem,
    this.findChildIndexCallback,
    this.addAutomaticKeepAlives = addAutomaticKeepAlivesDefaultValue,
    this.addRepaintBoundaries = addRepaintBoundariesDefaultValue,
    this.addSemanticIndexes = addSemanticIndexesDefaultValue,
    this.cacheExtent,
    this.semanticChildCount,
    this.keyboardDismissBehavior = keyboardDismissBehaviorDefaultValue,
    this.restorationId,
    this.hitTestBehavior = hitTestBehaviorDefaultValue,
  });

  /// Length of the items.
  final int? itemCount;

  /// Item builder function.
  final NullableIndexedWidgetBuilder itemBuilder;

  /// Primary.
  final bool primary;

  /// Shrink wrap.
  final bool shrinkWrap;

  /// Item extent.
  final double? itemExtent;

  /// Item extent builder.
  final ItemExtentBuilder? itemExtentBuilder;

  /// Prototype item.
  final Widget? prototypeItem;

  /// Find child index callback.
  final ChildIndexGetter? findChildIndexCallback;

  /// Add automatic keep alives.
  final bool addAutomaticKeepAlives;

  /// Add repaint boundaries.
  final bool addRepaintBoundaries;

  /// Add semantic indexes.
  final bool addSemanticIndexes;

  /// Cache extent.
  final double? cacheExtent;

  /// Semantic child count.
  final int? semanticChildCount;

  /// Keyboard dismiss behavior.
  final ScrollViewKeyboardDismissBehavior keyboardDismissBehavior;

  /// Restoration id.
  final String? restorationId;

  /// Hit test behavior.
  final HitTestBehavior hitTestBehavior;

  /// Builds the scrollable.
  @override
  Widget buildScrollable(context) {
    final themeExtension = context.resolveThemeExtension<MyoroScrollableThemeExtension>();
    final padding = style.padding ?? themeExtension.padding;

    return ListView.builder(
      controller: controller,
      scrollDirection: direction,
      reverse: reverse,
      clipBehavior: clipBehavior,
      dragStartBehavior: dragStartBehavior,
      physics: physics,
      itemCount: itemCount,
      itemBuilder: itemBuilder,
      primary: primary,
      shrinkWrap: shrinkWrap,
      padding: padding,
      itemExtent: itemExtent,
      itemExtentBuilder: itemExtentBuilder,
      prototypeItem: prototypeItem,
      findChildIndexCallback: findChildIndexCallback,
      addAutomaticKeepAlives: addAutomaticKeepAlives,
      addRepaintBoundaries: addRepaintBoundaries,
      addSemanticIndexes: addSemanticIndexes,
      cacheExtent: cacheExtent,
      semanticChildCount: semanticChildCount,
      keyboardDismissBehavior: keyboardDismissBehavior,
      restorationId: restorationId,
      hitTestBehavior: hitTestBehavior,
    );
  }

  /// Initial state getter.
  @override
  MyoroScrollableState get initialState {
    return MyoroListScrollableState(
      controller,
      direction,
      reverse,
      clipBehavior,
      dragStartBehavior,
      physics,
      itemCount,
      itemBuilder,
      primary,
      shrinkWrap,
      itemExtent,
      itemExtentBuilder,
      prototypeItem,
      findChildIndexCallback,
      addAutomaticKeepAlives,
      addRepaintBoundaries,
      addSemanticIndexes,
      cacheExtent,
      semanticChildCount,
      keyboardDismissBehavior,
      restorationId,
      hitTestBehavior,
    );
  }
}
