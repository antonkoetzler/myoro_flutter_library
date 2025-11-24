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
    double? spacing,
  }) {
    final effectiveChildren = spacing != null && spacing > 0
        ? _addSpacingToChildren(children, spacing, scrollDirection)
        : children;
    return GridView(
      scrollDirection: scrollDirection,
      reverse: reverse,
      controller: controller,
      primary: primary,
      physics: physics,
      shrinkWrap: shrinkWrap,
      gridDelegate: gridDelegate,
      children: effectiveChildren,
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
    double? spacing,
  }) {
    return GridView.builder(
      scrollDirection: scrollDirection,
      reverse: reverse,
      controller: controller,
      primary: primary,
      physics: physics,
      shrinkWrap: shrinkWrap,
      gridDelegate: gridDelegate,
      itemBuilder: spacing != null && spacing > 0
          ? (context, index) {
              final item = itemBuilder(context, index);
              final isLast = itemCount != null && index == itemCount - 1;
              if (isLast) return item;
              return _wrapWithSpacing(item, spacing, scrollDirection);
            }
          : itemBuilder,
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
    double? spacing,
  }) {
    final effectiveChildren = spacing != null && spacing > 0
        ? _addSpacingToChildren(children, spacing, scrollDirection)
        : children;
    return ListView(
      scrollDirection: scrollDirection,
      reverse: reverse,
      controller: controller,
      primary: primary,
      physics: physics,
      shrinkWrap: shrinkWrap,
      children: effectiveChildren,
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
    double? spacing,
  }) {
    return ListView.builder(
      scrollDirection: scrollDirection,
      reverse: reverse,
      controller: controller,
      primary: primary,
      physics: physics,
      shrinkWrap: shrinkWrap,
      itemBuilder: spacing != null && spacing > 0
          ? (context, index) {
              final item = itemBuilder(context, index);
              final isLast = itemCount != null && index == itemCount - 1;
              if (isLast) return item;
              return _wrapWithSpacing(item, spacing, scrollDirection);
            }
          : itemBuilder,
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

  /// Adds spacing between children widgets.
  static List<Widget> _addSpacingToChildren(List<Widget> children, double spacing, Axis scrollDirection) {
    if (children.isEmpty) return children;
    final result = <Widget>[];
    for (var i = 0; i < children.length; i++) {
      result.add(children[i]);
      if (i < children.length - 1) {
        result.add(_createSpacingWidget(spacing, scrollDirection));
      }
    }
    return result;
  }

  /// Creates a spacing widget based on scroll direction.
  static Widget _createSpacingWidget(double spacing, Axis scrollDirection) {
    if (scrollDirection == Axis.horizontal) {
      return SizedBox(width: spacing);
    } else {
      return SizedBox(height: spacing);
    }
  }

  /// Wraps a widget with spacing based on scroll direction.
  static Widget _wrapWithSpacing(Widget child, double spacing, Axis scrollDirection) {
    if (scrollDirection == Axis.horizontal) {
      return Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          child,
          SizedBox(width: spacing),
        ],
      );
    } else {
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          child,
          SizedBox(height: spacing),
        ],
      );
    }
  }
}
