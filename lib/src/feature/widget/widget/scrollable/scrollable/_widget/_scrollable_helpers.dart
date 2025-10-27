part of '../bundle/myoro_scrollable_bundle.dart';

/// Helper class for creating scrollable widgets with common properties applied.
final class _ScrollableHelpers {
  const _ScrollableHelpers._();

  /// Creates a GridView with common scrollable properties applied.
  static GridView gridView({
    required Axis scrollDirection,
    required bool reverse,
    required ScrollPhysics? physics,
    required ScrollController? controller,
    required bool? primary,
    required bool shrinkWrap,
    required SliverGridDelegate gridDelegate,
    required List<Widget> children,
  }) {
    return GridView(
      scrollDirection: scrollDirection,
      reverse: reverse,
      controller: controller,
      primary: primary,
      physics: physics,
      shrinkWrap: shrinkWrap,
      gridDelegate: gridDelegate,
      children: children,
    );
  }

  /// Creates a GridView.builder with common scrollable properties applied.
  static GridView gridViewBuilder({
    required Axis scrollDirection,
    required bool reverse,
    required ScrollPhysics? physics,
    required ScrollController? controller,
    required bool? primary,
    required bool shrinkWrap,
    required SliverGridDelegate gridDelegate,
    required IndexedWidgetBuilder itemBuilder,
    int? itemCount,
  }) {
    return GridView.builder(
      scrollDirection: scrollDirection,
      reverse: reverse,
      controller: controller,
      primary: primary,
      physics: physics,
      shrinkWrap: shrinkWrap,
      gridDelegate: gridDelegate,
      itemBuilder: itemBuilder,
      itemCount: itemCount,
    );
  }

  /// Creates a ListView with common scrollable properties applied.
  static ListView listView({
    required Axis scrollDirection,
    required bool reverse,
    required ScrollPhysics? physics,
    required ScrollController? controller,
    required bool? primary,
    required bool shrinkWrap,
    required List<Widget> children,
  }) {
    return ListView(
      scrollDirection: scrollDirection,
      reverse: reverse,
      controller: controller,
      primary: primary,
      physics: physics,
      shrinkWrap: shrinkWrap,
      children: children,
    );
  }

  /// Creates a ListView.builder with common scrollable properties applied.
  static ListView listViewBuilder({
    required Axis scrollDirection,
    required bool reverse,
    required ScrollPhysics? physics,
    required ScrollController? controller,
    required bool? primary,
    required bool shrinkWrap,
    required IndexedWidgetBuilder itemBuilder,
    int? itemCount,
    double? itemExtent,
    Widget? prototypeItem,
  }) {
    return ListView.builder(
      scrollDirection: scrollDirection,
      reverse: reverse,
      controller: controller,
      primary: primary,
      physics: physics,
      shrinkWrap: shrinkWrap,
      itemBuilder: itemBuilder,
      itemCount: itemCount,
      itemExtent: itemExtent,
      prototypeItem: prototypeItem,
    );
  }

  /// Creates a SingleChildScrollView with common scrollable properties applied.
  static SingleChildScrollView singleChildScrollView({
    required Axis scrollDirection,
    required bool reverse,
    required ScrollPhysics? physics,
    required ScrollController? controller,
    required bool? primary,
    required Widget child,
  }) {
    return SingleChildScrollView(
      scrollDirection: scrollDirection,
      reverse: reverse,
      physics: physics,
      controller: controller,
      primary: primary,
      child: child,
    );
  }

  /// Creates a CustomScrollView with common scrollable properties applied.
  static CustomScrollView customScrollView({
    required Axis scrollDirection,
    required bool reverse,
    required ScrollPhysics? physics,
    required ScrollController? controller,
    required bool? primary,
    required bool shrinkWrap,
    required List<Widget> slivers,
  }) {
    return CustomScrollView(
      scrollDirection: scrollDirection,
      reverse: reverse,
      controller: controller,
      primary: primary,
      physics: physics,
      shrinkWrap: shrinkWrap,
      slivers: slivers,
    );
  }
}
