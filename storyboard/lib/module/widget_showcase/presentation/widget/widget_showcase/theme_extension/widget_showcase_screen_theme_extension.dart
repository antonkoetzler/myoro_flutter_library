import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

part 'widget_showcase_screen_theme_extension.g.dart';

/// [ThemeExtension] of [WidgetShowcaseScreen].
@immutable
@myoroThemeExtension
final class WidgetShowcaseScreenThemeExtension extends ThemeExtension<WidgetShowcaseScreenThemeExtension>
    with _$WidgetShowcaseScreenThemeExtensionMixin {
  const WidgetShowcaseScreenThemeExtension({
    required this.color,
    required this.padding,
    required this.widgetOptionsModalTitleTextStyle,
    required this.widgetOptionsButtonIcon,
    required this.widgetOptionsModalSpacing,
    required this.widgetOptionsModalPadding,
    required this.widgetOptionsModalItemPadding,
    required this.widgetOptionsModalCloseButtonPadding,
    required this.sectionHeaderTextStyle,
  });

  WidgetShowcaseScreenThemeExtension.fake()
    : color = myoroFake<Color>(),
      padding = myoroFake<EdgeInsets>(),
      widgetOptionsModalTitleTextStyle = myoroFake<TextStyle>(),
      widgetOptionsButtonIcon = myoroFake<IconData>(),
      widgetOptionsModalSpacing = faker.randomGenerator.decimal(scale: kMyoroMultiplier * 4),
      widgetOptionsModalPadding = myoroFake<EdgeInsets>(),
      widgetOptionsModalItemPadding = myoroFake<EdgeInsets>(),
      widgetOptionsModalCloseButtonPadding = myoroFake<EdgeInsets>(),
      sectionHeaderTextStyle = myoroFake<TextStyle>();

  WidgetShowcaseScreenThemeExtension.builder(TextTheme textTheme)
    : color = MyoroColors.blue1.withValues(alpha: kMyoroMultiplier * 5 / 100),
      padding = const EdgeInsets.all(kMyoroMultiplier * 4),
      widgetOptionsModalTitleTextStyle = textTheme.titleMedium!,
      widgetOptionsButtonIcon = Icons.menu,
      widgetOptionsModalSpacing = kMyoroMultiplier * 4,
      widgetOptionsModalPadding = const EdgeInsets.only(top: 4),
      widgetOptionsModalItemPadding = const EdgeInsets.symmetric(horizontal: kMyoroMultiplier * 2),
      widgetOptionsModalCloseButtonPadding = const EdgeInsets.only(top: kMyoroMultiplier, right: kMyoroMultiplier),
      sectionHeaderTextStyle = const TextStyle(fontSize: 18, fontWeight: FontWeight.bold);

  /// [Color] of [_WidgetShowcase].
  final Color color;

  /// Padding of the [MyoroScreenConfiguration.body].
  final EdgeInsets padding;

  /// [TextStyle] of the widget option's modal [MyoroModalThemeExtension.titleTextStyle].
  final TextStyle widgetOptionsModalTitleTextStyle;

  /// [IconData] of the [_WidgetShowcase.widgetOptions] button.
  final IconData widgetOptionsButtonIcon;

  /// [Column.spacing] of the widget options in the [_WidgetShowcase.widgetOptions] modal.
  final double widgetOptionsModalSpacing;

  /// [MyoroModalConfiguration.padding] of the [_WidgetShowcase.widgetOptions] modal.
  final EdgeInsets widgetOptionsModalPadding;

  /// Padding of each widget option in the [_WidgetShowcase.widgetOptions] modal.
  final EdgeInsets widgetOptionsModalItemPadding;

  /// [MyoroModalConfiguration.closeButtonPadding]
  final EdgeInsets widgetOptionsModalCloseButtonPadding;

  /// [TextStyle] of the section headers in the widget options modal.
  final TextStyle sectionHeaderTextStyle;

  @override
  WidgetShowcaseScreenThemeExtension lerp(
    covariant ThemeExtension<WidgetShowcaseScreenThemeExtension>? other,
    double t,
  ) {
    if (other is! WidgetShowcaseScreenThemeExtension) return this;
    return copyWith(
      color: Color.lerp(color, other.color, t),
      padding: EdgeInsets.lerp(padding, other.padding, t),
      widgetOptionsModalTitleTextStyle: TextStyle.lerp(
        widgetOptionsModalTitleTextStyle,
        other.widgetOptionsModalTitleTextStyle,
        t,
      ),
      widgetOptionsButtonIcon: myoroFallbackLerp(widgetOptionsButtonIcon, other.widgetOptionsButtonIcon, t),
      widgetOptionsModalSpacing: lerpDouble(widgetOptionsModalSpacing, other.widgetOptionsModalSpacing, t),
      widgetOptionsModalPadding: EdgeInsets.lerp(widgetOptionsModalPadding, other.widgetOptionsModalPadding, t),
      widgetOptionsModalItemPadding: EdgeInsets.lerp(
        widgetOptionsModalItemPadding,
        other.widgetOptionsModalItemPadding,
        t,
      ),
      widgetOptionsModalCloseButtonPadding: EdgeInsets.lerp(
        widgetOptionsModalCloseButtonPadding,
        other.widgetOptionsModalCloseButtonPadding,
        t,
      ),
      sectionHeaderTextStyle: TextStyle.lerp(sectionHeaderTextStyle, other.sectionHeaderTextStyle, t),
    );
  }
}
