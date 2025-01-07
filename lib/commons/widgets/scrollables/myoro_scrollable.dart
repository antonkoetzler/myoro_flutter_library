import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Simplifying scrollable widgets (i.e. creating a simple or lazy loaded scrollable).
///
/// If you are getting errors using this widget, consider using a [SizedBox] with def-
/// ined widths/heights & or wrap the [MyoroScrollable] with [Expanded]/[Flexible].
final class MyoroScrollable extends StatelessWidget {
  /// Type of list.
  final MyoroScrollableEnum scrollableType;

  /// Direction of the list.
  final Axis direction;

  /// Padding of the content within the [MyoroScrollable].
  final EdgeInsets? padding;

  /// [ScrollController] when the scrollbar needs to be adjusted programmatically.
  final ScrollController? scrollController;

  /// Children inside of the list.
  final List<Widget> children;

  const MyoroScrollable({
    super.key,
    required this.scrollableType,
    this.direction = Axis.vertical,
    this.padding,
    this.scrollController,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    return switch (scrollableType) {
      MyoroScrollableEnum.singleChildScrollView => _SingleChildScrollView(scrollController, direction, padding, children),
      MyoroScrollableEnum.customScrollView => _CustomScrollView(scrollController, direction, padding, children),
    };
  }
}

final class _SingleChildScrollView extends StatelessWidget {
  final ScrollController? _scrollController;
  final Axis _direction;
  final EdgeInsets? _padding;
  final List<Widget> _children;

  const _SingleChildScrollView(
    this._scrollController,
    this._direction,
    this._padding,
    this._children,
  );

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: _scrollController,
      scrollDirection: _direction,
      child: Padding(
        padding: _padding ?? context.resolveThemeExtension<MyoroScrollableThemeExtension>().padding,
        child: _direction.isVertical ? Column(children: _children) : Row(children: _children),
      ),
    );
  }
}

final class _CustomScrollView extends StatelessWidget {
  final ScrollController? _scrollController;
  final Axis _direction;
  final EdgeInsets? _padding;
  final List<Widget> _children;

  const _CustomScrollView(
    this._scrollController,
    this._direction,
    this._padding,
    this._children,
  );

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      controller: _scrollController,
      scrollDirection: _direction,
      slivers: [
        SliverPadding(
          padding: _padding ?? context.resolveThemeExtension<MyoroScrollableThemeExtension>().padding,
          sliver: SliverList.builder(
            itemCount: _children.length,
            itemBuilder: (_, int index) => _children[index],
          ),
        ),
      ],
    );
  }
}
