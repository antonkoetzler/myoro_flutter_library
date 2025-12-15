part of '../bundle/myoro_scrollable_bundle.dart';

/// [ListView] widget of MFL.
class MyoroListScrollable extends _Base<MyoroListScrollableStyle> {
  /// Default value of [style].
  static const styleDefaultValue = MyoroListScrollableStyle();

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

  /// Default value of [emptyFeedbackTitle].
  static const emptyFeedbackTitleDefaultValue = kMyoroEmptyString;

  /// Default constructor.
  const MyoroListScrollable({
    super.key,
    MyoroListScrollableStyle style = styleDefaultValue,
    super.scrollController,
    super.direction,
    super.thumbVisibility,
    super.reverse,
    super.clipBehavior,
    super.dragStartBehavior,
    super.physics,
    required this.itemCount,
    required this.itemBuilder,
    this.primary = primaryDefaultValue,
    this.shrinkWrap = shrinkWrapDefaultValue,
    this.findChildIndexCallback,
    this.addAutomaticKeepAlives = addAutomaticKeepAlivesDefaultValue,
    this.addRepaintBoundaries = addRepaintBoundariesDefaultValue,
    this.addSemanticIndexes = addSemanticIndexesDefaultValue,
    this.cacheExtent,
    this.keyboardDismissBehavior = keyboardDismissBehaviorDefaultValue,
    this.restorationId,
    this.hitTestBehavior = hitTestBehaviorDefaultValue,
    this.emptyFeedbackTitle = emptyFeedbackTitleDefaultValue,
  }) : super(style: style);

  /// Length of the items.
  final int itemCount;

  /// Item builder function.
  final NullableIndexedWidgetBuilder itemBuilder;

  /// Primary.
  final bool primary;

  /// Shrink wrap.
  final bool shrinkWrap;

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

  /// Keyboard dismiss behavior.
  final ScrollViewKeyboardDismissBehavior keyboardDismissBehavior;

  /// Restoration id.
  final String? restorationId;

  /// Hit test behavior.
  final HitTestBehavior hitTestBehavior;

  /// Empty feedback title.
  final String emptyFeedbackTitle;

  /// Builds the scrollable.
  @override
  Widget buildScrollable(context) {
    final mflLocalization = context.mflLocalization;
    final myoroListScrollableEmptyFeedbackTitle = mflLocalization.myoroListScrollableEmptyFeedbackTitle;

    final themeExtension = context.resolveThemeExtension<MyoroListScrollableThemeExtension>();
    final padding = style.padding ?? themeExtension.padding;
    final emptyFeedbackStyle =
        style.emptyFeedbackStyle ?? themeExtension.emptyFeedbackStyle ?? MyoroFeedback.styleDefaultValue;

    final viewModel = context.read<MyoroScrollableViewModel>();
    final state = viewModel.state as MyoroListScrollableState;
    final scrollController = state.scrollController;
    final direction = state.direction;
    final reverse = state.reverse;
    final clipBehavior = state.clipBehavior;
    final dragStartBehavior = state.dragStartBehavior;
    final physics = state.physics;
    final itemCount = state.itemCount;
    final itemBuilder = state.itemBuilder;
    final primary = state.primary;
    final shrinkWrap = state.shrinkWrap;
    final findChildIndexCallback = state.findChildIndexCallback;
    final addAutomaticKeepAlives = state.addAutomaticKeepAlives;
    final addRepaintBoundaries = state.addRepaintBoundaries;
    final addSemanticIndexes = state.addSemanticIndexes;
    final cacheExtent = state.cacheExtent;
    final keyboardDismissBehavior = state.keyboardDismissBehavior;
    final restorationId = state.restorationId;
    final hitTestBehavior = state.hitTestBehavior;

    return itemCount == 0
        ? MyoroEmptyFeedback(
            style: emptyFeedbackStyle,
            title: emptyFeedbackTitle.isNotEmpty ? emptyFeedbackTitle : myoroListScrollableEmptyFeedbackTitle,
          )
        : ListView.separated(
            controller: scrollController,
            scrollDirection: direction,
            reverse: reverse,
            clipBehavior: clipBehavior,
            dragStartBehavior: dragStartBehavior,
            physics: physics,
            itemCount: itemCount,
            itemBuilder: itemBuilder,
            separatorBuilder: (_, _) => const _Spacer(),
            primary: primary,
            shrinkWrap: shrinkWrap,
            padding: padding,
            findChildIndexCallback: findChildIndexCallback,
            addAutomaticKeepAlives: addAutomaticKeepAlives,
            addRepaintBoundaries: addRepaintBoundaries,
            addSemanticIndexes: addSemanticIndexes,
            cacheExtent: cacheExtent,
            keyboardDismissBehavior: keyboardDismissBehavior,
            restorationId: restorationId,
            hitTestBehavior: hitTestBehavior,
          );
  }

  /// Initial state getter.
  @override
  MyoroScrollableState get initialState {
    return MyoroListScrollableState(
      scrollController,
      direction,
      thumbVisibility,
      reverse,
      clipBehavior,
      dragStartBehavior,
      physics,
      itemCount,
      itemBuilder,
      primary,
      shrinkWrap,
      findChildIndexCallback,
      addAutomaticKeepAlives,
      addRepaintBoundaries,
      addSemanticIndexes,
      cacheExtent,
      keyboardDismissBehavior,
      restorationId,
      hitTestBehavior,
    );
  }
}
