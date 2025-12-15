part of '../bundle/myoro_scrollable_bundle.dart';

/// [SingleChildScrollView] widget.
class MyoroSingleChildScrollable extends _Base {
  /// Default value of [style].
  static const styleDefaultValue = MyoroScrollableStyle();

  /// Default constructor.
  const MyoroSingleChildScrollable({
    super.key,
    super.style = styleDefaultValue,
    super.scrollController,
    super.direction,
    super.thumbVisibility,
    super.reverse,
    super.clipBehavior,
    super.dragStartBehavior,
    super.physics,
    required this.child,
  });

  /// [SingleChildScrollView.padding].
  final Widget child;

  /// Builds the scrollable.
  @override
  Widget buildScrollable(context) {
    final themeExtension = context.resolveThemeExtension<MyoroScrollableThemeExtension>();
    final padding = style.padding ?? themeExtension.padding;

    final viewModel = context.read<MyoroScrollableViewModel>();
    final state = viewModel.state as MyoroSingleChildScrollableState;
    final scrollController = state.scrollController;
    final direction = state.direction;
    final reverse = state.reverse;
    final clipBehavior = state.clipBehavior;
    final dragStartBehavior = state.dragStartBehavior;
    final physics = state.physics;

    return SingleChildScrollView(
      controller: scrollController,
      scrollDirection: direction,
      reverse: reverse,
      padding: padding,
      clipBehavior: clipBehavior,
      dragStartBehavior: dragStartBehavior,
      physics: physics,
      child: child,
    );
  }

  /// Initial state getter.
  @override
  MyoroSingleChildScrollableState get initialState {
    return MyoroSingleChildScrollableState(
      scrollController,
      direction,
      thumbVisibility,
      reverse,
      clipBehavior,
      dragStartBehavior,
      physics,
      child,
    );
  }
}
