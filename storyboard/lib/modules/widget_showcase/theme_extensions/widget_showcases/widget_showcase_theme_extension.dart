import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// [ThemeExtension] for [WidgetShowcase].
///
/// TODO: Test needs to be rewritten.
@immutable
final class WidgetShowcaseThemeExtension extends ThemeExtension<WidgetShowcaseThemeExtension> {
  /// [BoxDecoration] of [_Wrapper].
  final BoxDecoration wrapperDecoration;

  /// [EdgeInsets] of [_Wrapper].
  final EdgeInsets wrapperPadding;

  /// [EdgeInsets] of the content in [_Wrapper].
  final EdgeInsets wrapperContentPadding;

  /// Alignment of [_Wrapper].
  final Alignment wrapperAlignment;

  /// [IconData] of [_WidgetOptionsButton].
  final IconData widgetOptionsButtonIcon;

  /// [EdgeInsets] of an item of [WidgetShowcase.widgetOptions].
  final EdgeInsets widgetOptionsItemPadding;

  const WidgetShowcaseThemeExtension({
    required this.wrapperDecoration,
    required this.wrapperPadding,
    required this.wrapperContentPadding,
    required this.wrapperAlignment,
    required this.widgetOptionsButtonIcon,
    required this.widgetOptionsItemPadding,
  });

  WidgetShowcaseThemeExtension.fake()
    : wrapperDecoration = BoxDecoration(
        color: kMyoroTestColors[faker.randomGenerator.integer(kMyoroTestColors.length)],
        border: Border.all(
          width: faker.randomGenerator.decimal(),
          color: kMyoroTestColors[faker.randomGenerator.integer(kMyoroTestColors.length)],
        ),
        borderRadius: BorderRadius.circular(faker.randomGenerator.decimal()),
      ),
      wrapperPadding = EdgeInsets.all(faker.randomGenerator.decimal()),
      wrapperContentPadding = EdgeInsets.all(faker.randomGenerator.decimal()),
      widgetOptionsButtonIcon = kMyoroTestIcons[faker.randomGenerator.integer(kMyoroTestIcons.length)],
      wrapperAlignment =
          [
            Alignment.center,
            Alignment.topLeft,
            Alignment.topRight,
            Alignment.topCenter,
            Alignment.centerLeft,
            Alignment.bottomLeft,
            Alignment.centerRight,
            Alignment.bottomRight,
            Alignment.bottomCenter,
          ][faker.randomGenerator.integer(9)],
      widgetOptionsItemPadding = EdgeInsets.all(faker.randomGenerator.decimal(scale: 20));

  WidgetShowcaseThemeExtension.builder(ColorScheme colorScheme)
    : wrapperDecoration = BoxDecoration(
        color: MyoroColorDesignSystem.attention.withValues(alpha: 0.1),
        border: Border.all(width: kMyoroBorderLength, color: MyoroColorDesignSystem.attention),

        borderRadius: BorderRadius.circular(kMyoroBorderRadiusLength),
      ),
      wrapperPadding = const EdgeInsets.all(20),
      wrapperContentPadding = const EdgeInsets.all(20),
      wrapperAlignment = Alignment.center,
      widgetOptionsButtonIcon = Icons.menu,
      widgetOptionsItemPadding = const EdgeInsets.all(10);

  @override
  WidgetShowcaseThemeExtension copyWith({
    BoxDecoration? wrapperDecoration,
    EdgeInsets? wrapperPadding,
    EdgeInsets? wrapperContentPadding,
    Alignment? wrapperAlignment,
    IconData? widgetOptionsButtonIcon,
    EdgeInsets? widgetOptionsItemPadding,
  }) {
    return WidgetShowcaseThemeExtension(
      wrapperDecoration: wrapperDecoration ?? this.wrapperDecoration,
      wrapperPadding: wrapperPadding ?? this.wrapperPadding,
      wrapperContentPadding: wrapperContentPadding ?? this.wrapperContentPadding,
      wrapperAlignment: wrapperAlignment ?? this.wrapperAlignment,
      widgetOptionsButtonIcon: widgetOptionsButtonIcon ?? this.widgetOptionsButtonIcon,
      widgetOptionsItemPadding: widgetOptionsItemPadding ?? this.widgetOptionsItemPadding,
    );
  }

  @override
  WidgetShowcaseThemeExtension lerp(covariant ThemeExtension<WidgetShowcaseThemeExtension>? other, double t) {
    if (other is! WidgetShowcaseThemeExtension) return this;
    return copyWith(
      wrapperDecoration: BoxDecoration.lerp(wrapperDecoration, other.wrapperDecoration, t),
      wrapperPadding: EdgeInsets.lerp(wrapperPadding, other.wrapperPadding, t),
      wrapperContentPadding: EdgeInsets.lerp(wrapperContentPadding, other.wrapperContentPadding, t),
      wrapperAlignment: Alignment.lerp(wrapperAlignment, other.wrapperAlignment, t),
      widgetOptionsButtonIcon: myoroLerp(widgetOptionsButtonIcon, other.widgetOptionsButtonIcon, t),
      widgetOptionsItemPadding: EdgeInsets.lerp(widgetOptionsItemPadding, other.widgetOptionsItemPadding, t),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is WidgetShowcaseThemeExtension &&
        other.runtimeType == runtimeType &&
        other.wrapperDecoration == wrapperDecoration &&
        other.wrapperPadding == wrapperPadding &&
        other.wrapperContentPadding == wrapperContentPadding &&
        other.wrapperAlignment == wrapperAlignment &&
        other.widgetOptionsButtonIcon == widgetOptionsButtonIcon &&
        other.widgetOptionsItemPadding == widgetOptionsItemPadding;
  }

  @override
  int get hashCode {
    return Object.hash(
      wrapperDecoration,
      wrapperPadding,
      wrapperContentPadding,
      wrapperAlignment,
      widgetOptionsButtonIcon,
      widgetOptionsItemPadding,
    );
  }

  @override
  String toString() =>
      'WidgetShowcaseThemeExtension(\n'
      '  wrapperDecoration: $wrapperDecoration,\n'
      '  wrapperPadding: $wrapperPadding,\n'
      '  wrapperContentPadding: $wrapperContentPadding,\n'
      '  wrapperAlignment: $wrapperAlignment,\n'
      '  widgetOptionsButtonIcon: $widgetOptionsButtonIcon,\n'
      '  widgetOptionsItemPadding: $widgetOptionsItemPadding,\n'
      ');';
}
