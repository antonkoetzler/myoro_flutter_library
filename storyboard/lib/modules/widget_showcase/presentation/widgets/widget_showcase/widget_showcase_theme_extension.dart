import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// [ThemeExtension] of [WidgetShowcase].
final class WidgetShowcaseThemeExtension extends ThemeExtension<WidgetShowcaseThemeExtension> {
  /// [BoxDecoration] of [WidgetShowcase].
  final BoxDecoration decoration;

  /// Content padding of [WidgetShowcase].
  final EdgeInsets contentPadding;

  const WidgetShowcaseThemeExtension({required this.decoration, required this.contentPadding});

  WidgetShowcaseThemeExtension.fake()
    : decoration = myoroFake<BoxDecoration>(),
      contentPadding = myoroFake<EdgeInsets>();

  WidgetShowcaseThemeExtension.builder()
    : decoration = BoxDecoration(
        color: MyoroColorDesignSystem.attention.withValues(alpha: 0.3),
        border: Border.all(width: kMyoroBorderLength, color: MyoroColorDesignSystem.attention),
        borderRadius: BorderRadius.circular(kMyoroBorderRadiusLength),
      ),
      contentPadding = const EdgeInsets.all(10);

  @override
  WidgetShowcaseThemeExtension copyWith({BoxDecoration? decoration, EdgeInsets? contentPadding}) {
    return WidgetShowcaseThemeExtension(
      decoration: decoration ?? this.decoration,
      contentPadding: contentPadding ?? this.contentPadding,
    );
  }

  @override
  WidgetShowcaseThemeExtension lerp(covariant ThemeExtension<WidgetShowcaseThemeExtension>? other, double t) {
    if (other is! WidgetShowcaseThemeExtension) return this;
    return copyWith(
      decoration: BoxDecoration.lerp(decoration, other.decoration, t),
      contentPadding: EdgeInsets.lerp(contentPadding, other.contentPadding, t),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is WidgetShowcaseThemeExtension &&
        other.runtimeType == runtimeType &&
        other.decoration == decoration &&
        other.contentPadding == contentPadding;
  }

  @override
  int get hashCode {
    return Object.hash(decoration, contentPadding);
  }

  @override
  String toString() =>
      'WidgetShowcaseThemeExtension(\n'
      '  decoration: $decoration,\n'
      '  contentPadding: $contentPadding,\n'
      ');';
}
