import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// [ThemeExtension] of [WidgetShowcaseScreen].
final class WidgetShowcaseScreenThemeExtension extends ThemeExtension<WidgetShowcaseScreenThemeExtension> {
  /// Padding of [_WidgetShowcase].
  final EdgeInsets padding;

  /// [BoxDecoration] of [_WidgetShowcase].
  final BoxDecoration decoration;

  /// Content padding of [_WidgetShowcase].
  final EdgeInsets contentPadding;

  /// [IconData] of the [_WidgetShowcase.widgetOptions] button.
  final IconData widgetOptionsButtonIcon;

  /// [Column.spacing] of the widget options in the [_WidgetShowcase.widgetOptions] modal.
  final double widgetOptionsModalSpacing;

  /// [MyoroModalConfiguration.padding] of the [_WidgetShowcase.widgetOptions] modal.
  final EdgeInsets widgetOptionsModalPadding;

  /// Padding of each widget option in the [_WidgetShowcase.widgetOptions] modal.
  final EdgeInsets widgetOptionsModalItemPadding;

  const WidgetShowcaseScreenThemeExtension({
    required this.padding,
    required this.decoration,
    required this.contentPadding,
    required this.widgetOptionsButtonIcon,
    required this.widgetOptionsModalSpacing,
    required this.widgetOptionsModalPadding,
    required this.widgetOptionsModalItemPadding,
  });

  WidgetShowcaseScreenThemeExtension.fake()
    : padding = myoroFake<EdgeInsets>(),
      decoration = myoroFake<BoxDecoration>(),
      contentPadding = myoroFake<EdgeInsets>(),
      widgetOptionsButtonIcon = myoroFake<IconData>(),
      widgetOptionsModalSpacing = faker.randomGenerator.decimal(scale: 20),
      widgetOptionsModalPadding = myoroFake<EdgeInsets>(),
      widgetOptionsModalItemPadding = myoroFake<EdgeInsets>();

  WidgetShowcaseScreenThemeExtension.builder()
    : padding = const EdgeInsets.all(10),
      decoration = BoxDecoration(
        color: MyoroColorDesignSystem.attention.withValues(alpha: 0.1),
        border: Border.all(width: kMyoroBorderLength, color: MyoroColorDesignSystem.attention),
        borderRadius: BorderRadius.circular(kMyoroBorderRadiusLength),
      ),
      contentPadding = const EdgeInsets.all(10),
      widgetOptionsButtonIcon = Icons.menu,
      widgetOptionsModalSpacing = 10,
      widgetOptionsModalPadding = const EdgeInsets.only(top: 5),
      widgetOptionsModalItemPadding = const EdgeInsets.symmetric(horizontal: 10);

  @override
  WidgetShowcaseScreenThemeExtension copyWith({
    EdgeInsets? padding,
    BoxDecoration? decoration,
    EdgeInsets? contentPadding,
    IconData? widgetOptionsButtonIcon,
    double? widgetOptionsModalSpacing,
    EdgeInsets? widgetOptionsModalPadding,
    EdgeInsets? widgetOptionsModalItemPadding,
  }) {
    return WidgetShowcaseScreenThemeExtension(
      padding: padding ?? this.padding,
      decoration: decoration ?? this.decoration,
      contentPadding: contentPadding ?? this.contentPadding,
      widgetOptionsButtonIcon: widgetOptionsButtonIcon ?? this.widgetOptionsButtonIcon,
      widgetOptionsModalSpacing: widgetOptionsModalSpacing ?? this.widgetOptionsModalSpacing,
      widgetOptionsModalPadding: widgetOptionsModalPadding ?? this.widgetOptionsModalPadding,
      widgetOptionsModalItemPadding: widgetOptionsModalItemPadding ?? this.widgetOptionsModalItemPadding,
    );
  }

  @override
  WidgetShowcaseScreenThemeExtension lerp(
    covariant ThemeExtension<WidgetShowcaseScreenThemeExtension>? other,
    double t,
  ) {
    if (other is! WidgetShowcaseScreenThemeExtension) return this;
    return copyWith(
      padding: EdgeInsets.lerp(padding, other.padding, t),
      decoration: BoxDecoration.lerp(decoration, other.decoration, t),
      contentPadding: EdgeInsets.lerp(contentPadding, other.contentPadding, t),
      widgetOptionsButtonIcon: myoroLerp(widgetOptionsButtonIcon, other.widgetOptionsButtonIcon, t),
      widgetOptionsModalSpacing: lerpDouble(widgetOptionsModalSpacing, other.widgetOptionsModalSpacing, t),
      widgetOptionsModalPadding: EdgeInsets.lerp(widgetOptionsModalPadding, other.widgetOptionsModalPadding, t),
      widgetOptionsModalItemPadding: EdgeInsets.lerp(
        widgetOptionsModalItemPadding,
        other.widgetOptionsModalItemPadding,
        t,
      ),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is WidgetShowcaseScreenThemeExtension &&
        other.runtimeType == runtimeType &&
        other.padding == padding &&
        other.decoration == decoration &&
        other.contentPadding == contentPadding &&
        other.widgetOptionsButtonIcon == widgetOptionsButtonIcon &&
        other.widgetOptionsModalSpacing == widgetOptionsModalSpacing &&
        other.widgetOptionsModalPadding == widgetOptionsModalPadding &&
        other.widgetOptionsModalItemPadding == widgetOptionsModalItemPadding;
  }

  @override
  int get hashCode {
    return Object.hash(
      padding,
      decoration,
      contentPadding,
      widgetOptionsButtonIcon,
      widgetOptionsModalSpacing,
      widgetOptionsModalPadding,
      widgetOptionsModalItemPadding,
    );
  }

  @override
  String toString() =>
      'WidgetShowcaseScreenThemeExtension(\n'
      '  padding: $padding,\n'
      '  decoration: $decoration,\n'
      '  contentPadding: $contentPadding,\n'
      '  widgetOptionsButtonIcon: $widgetOptionsButtonIcon,\n'
      '  widgetOptionsModalSpacing: $widgetOptionsModalSpacing,\n'
      '  widgetOptionsModalPadding: $widgetOptionsModalPadding,\n'
      '  widgetOptionsModalItemPadding: $widgetOptionsModalItemPadding,\n'
      ');';
}
