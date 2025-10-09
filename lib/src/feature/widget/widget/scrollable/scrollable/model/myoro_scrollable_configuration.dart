part of '../bundle/myoro_scrollable_bundle.dart';

/// Mixin that provides common scrollable configuration properties.
mixin MyoroScrollableConfigurationMixin {
  /// The axis along which the scroll view scrolls.
  Axis get scrollDirection;

  /// Whether the scroll view scrolls in the reading direction.
  bool get reverse;

  /// How the scroll view should respond to user input.
  ScrollPhysics? get physics;

  /// An object that can be used to control the position to which this scroll
  /// view is scrolled.
  ScrollController? get controller;

  /// Whether this is the primary scroll view associated with the parent.
  bool? get primary;

  /// Whether the extent of the scroll view in the [scrollDirection] should be
  /// determined by the contents being viewed.
  bool get shrinkWrap;

  /// Configuration for gradient overlays.
  MyoroScrollableGradientConfiguration? get gradientConfiguration;
}
