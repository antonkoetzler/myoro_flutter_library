import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Enum for the types of scrollables in [MyoroScrollable].
enum MyoroScrollableEnum {
  /// Simple content.
  ///
  /// Should be used for static lists or lists not containing lots of items.
  singleChildScrollView,

  /// Lazy loaded content (only renders items being displayed).
  ///
  /// Should be used for items containings lots of items.
  customScrollView;

  factory MyoroScrollableEnum.fake() {
    return values[faker.randomGenerator.integer(values.length)];
  }

  /// Scrollable list generated.
  Widget widget(
    ScrollController? scrollController,
    Axis direction,
    EdgeInsets? padding,
    List<Widget> children,
  ) {
    return switch (this) {
      singleChildScrollView => _SingleChildScrollView(scrollController, direction, padding, children),
      customScrollView => _CustomScrollView(scrollController, direction, padding, children),
    };
  }

  bool get ehSingleChildScrollView => this == singleChildScrollView;
  bool get ehCustomScrollView => this == customScrollView;
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
