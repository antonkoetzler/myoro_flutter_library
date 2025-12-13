part of '../bundle/myoro_scrollable_bundle.dart';

/// [SingleChildScrollView] widget.
class MyoroSingleChildScrollable extends _Base {
  /// Default constructor.
  const MyoroSingleChildScrollable({
    super.key,
    super.style,
    super.controller,
    super.direction,
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

    return SingleChildScrollView(
      controller: controller,
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
      controller,
      direction,
      reverse,
      clipBehavior,
      dragStartBehavior,
      physics,
      child,
    );
  }
}
