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
    ScrollController scrollController,
    Axis direction,
    List<Widget> children,
  ) {
    return switch (this) {
      singleChildScrollView => _SingleChildScrollView(scrollController, direction, children),
      customScrollView => _CustomScrollView(scrollController, direction, children),
    };
  }

  bool get ehSingleChildScrollView => this == singleChildScrollView;
  bool get ehCustomScrollView => this == customScrollView;
}

final class _SingleChildScrollView extends StatelessWidget {
  final ScrollController scrollController;
  final Axis direction;
  final List<Widget> children;

  const _SingleChildScrollView(
    this.scrollController,
    this.direction,
    this.children,
  );

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: scrollController,
      scrollDirection: direction,
      child: direction.isVertical ? Column(children: children) : Row(children: children),
    );
  }
}

final class _CustomScrollView extends StatelessWidget {
  final ScrollController scrollController;
  final Axis direction;
  final List<Widget> children;

  const _CustomScrollView(
    this.scrollController,
    this.direction,
    this.children,
  );

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      controller: scrollController,
      scrollDirection: direction,
      slivers: [
        SliverList.builder(
          itemCount: children.length,
          itemBuilder: (_, int index) => children[index],
        ),
      ],
    );
  }
}
