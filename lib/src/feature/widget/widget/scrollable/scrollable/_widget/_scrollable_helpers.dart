part of '../bundle/myoro_scrollable_bundle.dart';

/// Helper class for creating scrollable widgets with common properties applied.
final class _ScrollableHelpers {
  const _ScrollableHelpers._();

  /// Creates a GridView with common scrollable properties applied.
  static GridView gridView({
    required MyoroScrollableConfigurationMixin configuration,
    required SliverGridDelegate gridDelegate,
    required List<Widget> children,
  }) {
    return GridView(
      scrollDirection: configuration.scrollDirection,
      reverse: configuration.reverse,
      controller: configuration.controller,
      primary: configuration.primary,
      physics: configuration.physics,
      shrinkWrap: configuration.shrinkWrap,
      gridDelegate: gridDelegate,
      children: children,
    );
  }

  /// Creates a GridView.builder with common scrollable properties applied.
  static GridView gridViewBuilder({
    required MyoroScrollableConfigurationMixin configuration,
    required SliverGridDelegate gridDelegate,
    required IndexedWidgetBuilder itemBuilder,
    int? itemCount,
  }) {
    return GridView.builder(
      scrollDirection: configuration.scrollDirection,
      reverse: configuration.reverse,
      controller: configuration.controller,
      primary: configuration.primary,
      physics: configuration.physics,
      shrinkWrap: configuration.shrinkWrap,
      gridDelegate: gridDelegate,
      itemBuilder: itemBuilder,
      itemCount: itemCount,
    );
  }

  /// Creates a ListView with common scrollable properties applied.
  static ListView listView({required MyoroScrollableConfigurationMixin configuration, required List<Widget> children}) {
    return ListView(
      scrollDirection: configuration.scrollDirection,
      reverse: configuration.reverse,
      controller: configuration.controller,
      primary: configuration.primary,
      physics: configuration.physics,
      shrinkWrap: configuration.shrinkWrap,
      children: children,
    );
  }

  /// Creates a ListView.builder with common scrollable properties applied.
  static ListView listViewBuilder({
    required MyoroScrollableConfigurationMixin configuration,
    required IndexedWidgetBuilder itemBuilder,
    int? itemCount,
    double? itemExtent,
    Widget? prototypeItem,
  }) {
    return ListView.builder(
      scrollDirection: configuration.scrollDirection,
      reverse: configuration.reverse,
      controller: configuration.controller,
      primary: configuration.primary,
      physics: configuration.physics,
      shrinkWrap: configuration.shrinkWrap,
      itemBuilder: itemBuilder,
      itemCount: itemCount,
      itemExtent: itemExtent,
      prototypeItem: prototypeItem,
    );
  }

  /// Creates a SingleChildScrollView with common scrollable properties applied.
  static SingleChildScrollView singleChildScrollView({
    required MyoroScrollableConfigurationMixin configuration,
    required Widget child,
  }) {
    return SingleChildScrollView(
      scrollDirection: configuration.scrollDirection,
      reverse: configuration.reverse,
      physics: configuration.physics,
      controller: configuration.controller,
      primary: configuration.primary,
      child: child,
    );
  }

  /// Creates a CustomScrollView with common scrollable properties applied.
  static CustomScrollView customScrollView({
    required MyoroScrollableConfigurationMixin configuration,
    required List<Widget> slivers,
  }) {
    return CustomScrollView(
      scrollDirection: configuration.scrollDirection,
      reverse: configuration.reverse,
      controller: configuration.controller,
      primary: configuration.primary,
      physics: configuration.physics,
      shrinkWrap: configuration.shrinkWrap,
      slivers: slivers,
    );
  }
}
