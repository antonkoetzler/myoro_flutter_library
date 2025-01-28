import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Simplifying scrollable widgets (i.e. creating a simple or lazy loaded scrollable).
///
/// If you are getting errors using this widget, consider using a [SizedBox] with def-
/// ined widths/heights & or wrap the [MyoroScrollable] with [Expanded]/[Flexible].
final class MyoroScrollable extends StatelessWidget {
  /// Type of list.
  final MyoroScrollableEnum scrollableType;

  /// [ScrollController] when the scrollbar needs to be adjusted programmatically.
  final ScrollController? scrollController;

  /// Direction of the list.
  final Axis direction;

  /// Padding of the content within the [MyoroScrollable].
  final EdgeInsets? padding;

  /// Constraints of the [MyoroScrollable].
  final BoxConstraints? constraints;

  /// Children inside of the list.
  final List<Widget> children;

  const MyoroScrollable({
    super.key,
    this.scrollController,
    required this.scrollableType,
    this.direction = Axis.vertical,
    this.padding,
    this.constraints,
    required this.children,
  });

  static Finder finder({
    MyoroScrollableEnum? scrollableType,
    bool scrollableTypeEnabled = false,
    ScrollController? scrollController,
    bool scrollControllerEnabled = false,
    Axis? direction,
    bool directionEnabled = false,
    EdgeInsets? padding,
    bool paddingEnabled = false,
    BoxConstraints? constraints,
    bool constraintsEnabled = false,
    List<Widget>? children,
    bool childrenEnabled = false,
  }) {
    return find.byWidgetPredicate(
      (Widget w) =>
          w is MyoroScrollable &&
          (scrollableTypeEnabled ? w.scrollableType == scrollableType : true) &&
          (scrollControllerEnabled ? w.scrollController == scrollController : true) &&
          (directionEnabled ? w.direction == direction : true) &&
          (paddingEnabled ? w.padding == padding : true) &&
          (constraintsEnabled ? w.constraints == constraints : true) &&
          (childrenEnabled ? w.children == children : true),
    );
  }

  @override
  Widget build(BuildContext context) {
    return switch (scrollableType) {
      MyoroScrollableEnum.singleChildScrollView => _SingleChildScrollView(
          scrollController,
          direction,
          padding,
          constraints,
          children,
        ),
      MyoroScrollableEnum.customScrollView => _CustomScrollView(
          scrollController,
          direction,
          padding,
          constraints,
          children,
        ),
    };
  }
}

final class _SingleChildScrollView extends StatelessWidget {
  final ScrollController? _scrollController;
  final Axis _direction;
  final EdgeInsets? _padding;
  final BoxConstraints? _constraints;
  final List<Widget> _children;

  const _SingleChildScrollView(
    this._scrollController,
    this._direction,
    this._padding,
    this._constraints,
    this._children,
  );

  @override
  Widget build(BuildContext context) {
    final children = _children.map<Widget>(
      (Widget child) {
        return ConstrainedBox(
          constraints: _constraints ?? const BoxConstraints(),
          child: child,
        );
      },
    ).toList();

    return MyoroLayoutBuilder(
      builder: (_, BoxConstraints constraints) {
        return SingleChildScrollView(
          controller: _scrollController,
          scrollDirection: _direction,
          child: Padding(
            padding: _padding ?? context.resolveThemeExtension<MyoroScrollableThemeExtension>().padding,
            // This [SizedBox] is used to stretch the cross axis of the [MyoroScrollable]
            // so that [_constraints] will not affect the dimensions of the [MyoroScrollable].
            // If you want to change the dimensions of the [MyoroScrollable], a [SizedBox]
            // wrapping said [MyoroScrollable] must be used.
            child: SizedBox(
              width: _direction.isVertical ? constraints.maxWidth : null,
              height: _direction.isHorizontal ? constraints.maxHeight : null,
              child: _direction.isVertical ? Column(children: children) : Row(children: children),
            ),
          ),
        );
      },
    );
  }
}

final class _CustomScrollView extends StatelessWidget {
  final ScrollController? _scrollController;
  final Axis _direction;
  final EdgeInsets? _padding;
  final BoxConstraints? _constraints;
  final List<Widget> _children;

  const _CustomScrollView(
    this._scrollController,
    this._direction,
    this._padding,
    this._constraints,
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
            itemBuilder: (_, int index) {
              return ConstrainedBox(
                constraints: _constraints ?? const BoxConstraints(),
                child: _children[index],
              );
            },
          ),
        ),
      ],
    );
  }
}
