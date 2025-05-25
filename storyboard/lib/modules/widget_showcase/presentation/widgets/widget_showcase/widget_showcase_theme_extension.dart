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

  const WidgetShowcaseThemeExtension({required this.padding, required this.decoration, required this.contentPadding});

  WidgetShowcaseThemeExtension.fake()
    : padding = myoroFake<EdgeInsets>(),
      decoration = myoroFake<BoxDecoration>(),
      contentPadding = myoroFake<EdgeInsets>();

  WidgetShowcaseThemeExtension.builder()
    : padding = const EdgeInsets.all(10),
      decoration = BoxDecoration(
        color: MyoroColorDesignSystem.attention.withValues(alpha: 0.1),
        border: Border.all(width: kMyoroBorderLength, color: MyoroColorDesignSystem.attention),
        borderRadius: BorderRadius.circular(kMyoroBorderRadiusLength),
      ),
      contentPadding = const EdgeInsets.all(10);

  @override
  WidgetShowcaseThemeExtension copyWith({EdgeInsets? padding, BoxDecoration? decoration, EdgeInsets? contentPadding}) {
    return WidgetShowcaseThemeExtension(
      padding: padding ?? this.padding,
      decoration: decoration ?? this.decoration,
      contentPadding: contentPadding ?? this.contentPadding,
    );
  }

  @override
  WidgetShowcaseThemeExtension lerp(covariant ThemeExtension<WidgetShowcaseThemeExtension>? other, double t) {
    if (other is! WidgetShowcaseThemeExtension) return this;
    return copyWith(
      padding: EdgeInsets.lerp(padding, other.padding, t),
      decoration: BoxDecoration.lerp(decoration, other.decoration, t),
      contentPadding: EdgeInsets.lerp(contentPadding, other.contentPadding, t),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is WidgetShowcaseThemeExtension &&
        other.runtimeType == runtimeType &&
        other.padding == padding &&
        other.decoration == decoration &&
        other.contentPadding == contentPadding;
  }

  @override
  int get hashCode {
    return Object.hash(padding, decoration, contentPadding);
  }

  @override
  String toString() =>
      'WidgetShowcaseThemeExtension(\n'
      '  padding: $padding,\n'
      '  decoration: $decoration,\n'
      '  contentPadding: $contentPadding,\n'
      ');';
}
