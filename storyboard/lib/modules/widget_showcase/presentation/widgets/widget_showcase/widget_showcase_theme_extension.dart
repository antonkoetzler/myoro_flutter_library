import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// [ThemeExtension] of [WidgetShowcase].
final class WidgetShowcaseThemeExtension extends ThemeExtension<WidgetShowcaseThemeExtension> {
  /// Padding of [WidgetShowcase].
  final EdgeInsets padding;

  /// [BoxDecoration] of [WidgetShowcase].
  final BoxDecoration decoration;

  /// Content padding of [WidgetShowcase].
  final EdgeInsets contentPadding;

  /// [IconData] of the [WidgetShowcase.widgetOptions] button.
  final IconData widgetOptionsButtonIcon;

  /// Padding of a widget option in the [WidgetShowcase.widgetOptions] modal.
  final EdgeInsets widgetOptionPadding;

  const WidgetShowcaseThemeExtension({
    required this.padding,
    required this.decoration,
    required this.contentPadding,
    required this.widgetOptionsButtonIcon,
    required this.widgetOptionPadding,
  });

  WidgetShowcaseThemeExtension.fake()
    : padding = myoroFake<EdgeInsets>(),
      decoration = myoroFake<BoxDecoration>(),
      contentPadding = myoroFake<EdgeInsets>(),
      widgetOptionsButtonIcon = myoroFake<IconData>(),
      widgetOptionPadding = myoroFake<EdgeInsets>();

  WidgetShowcaseThemeExtension.builder()
    : padding = const EdgeInsets.all(10),
      decoration = BoxDecoration(
        color: MyoroColorDesignSystem.attention.withValues(alpha: 0.1),
        border: Border.all(width: kMyoroBorderLength, color: MyoroColorDesignSystem.attention),
        borderRadius: BorderRadius.circular(kMyoroBorderRadiusLength),
      ),
      contentPadding = const EdgeInsets.all(10),
      widgetOptionsButtonIcon = Icons.menu,
      widgetOptionPadding = const EdgeInsets.all(10);

  @override
  WidgetShowcaseThemeExtension copyWith({
    EdgeInsets? padding,
    BoxDecoration? decoration,
    EdgeInsets? contentPadding,
    IconData? widgetOptionsButtonIcon,
    EdgeInsets? widgetOptionPadding,
  }) {
    return WidgetShowcaseThemeExtension(
      padding: padding ?? this.padding,
      decoration: decoration ?? this.decoration,
      contentPadding: contentPadding ?? this.contentPadding,
      widgetOptionsButtonIcon: widgetOptionsButtonIcon ?? this.widgetOptionsButtonIcon,
      widgetOptionPadding: widgetOptionPadding ?? this.widgetOptionPadding,
    );
  }

  @override
  WidgetShowcaseThemeExtension lerp(covariant ThemeExtension<WidgetShowcaseThemeExtension>? other, double t) {
    if (other is! WidgetShowcaseThemeExtension) return this;
    return copyWith(
      padding: EdgeInsets.lerp(padding, other.padding, t),
      decoration: BoxDecoration.lerp(decoration, other.decoration, t),
      contentPadding: EdgeInsets.lerp(contentPadding, other.contentPadding, t),
      widgetOptionsButtonIcon: myoroLerp(widgetOptionsButtonIcon, other.widgetOptionsButtonIcon, t),
      widgetOptionPadding: EdgeInsets.lerp(widgetOptionPadding, other.widgetOptionPadding, t),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is WidgetShowcaseThemeExtension &&
        other.runtimeType == runtimeType &&
        other.padding == padding &&
        other.decoration == decoration &&
        other.contentPadding == contentPadding &&
        other.widgetOptionsButtonIcon == widgetOptionsButtonIcon &&
        other.widgetOptionPadding == widgetOptionPadding;
  }

  @override
  int get hashCode {
    return Object.hash(padding, decoration, contentPadding, widgetOptionsButtonIcon, widgetOptionPadding);
  }

  @override
  String toString() =>
      'WidgetShowcaseThemeExtension(\n'
      '  padding: $padding,\n'
      '  decoration: $decoration,\n'
      '  contentPadding: $contentPadding,\n'
      '  widgetOptionsButtonIcon: $widgetOptionsButtonIcon,\n'
      '  widgetOptionPadding: $widgetOptionPadding,\n'
      ');';
}
