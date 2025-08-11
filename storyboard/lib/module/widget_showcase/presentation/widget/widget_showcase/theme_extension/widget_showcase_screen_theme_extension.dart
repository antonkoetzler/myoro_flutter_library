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
    required this.widgetOptionsButtonIcon,
    required this.widgetOptionsModalSpacing,
    required this.widgetOptionsModalPadding,
    required this.widgetOptionsModalItemPadding,
    required this.widgetOptionsModalCloseButtonPadding,
  });

  // coverage:ignore-start
  WidgetShowcaseScreenThemeExtension.fake()
    : color = myoroFake<Color>(),
      widgetOptionsButtonIcon = myoroFake<IconData>(),
      widgetOptionsModalSpacing = faker.randomGenerator.decimal(scale: 24),
      widgetOptionsModalPadding = myoroFake<EdgeInsets>(),
      widgetOptionsModalItemPadding = myoroFake<EdgeInsets>(),
      widgetOptionsModalCloseButtonPadding = myoroFake<EdgeInsets>();
  // coverage:ignore-end

  WidgetShowcaseScreenThemeExtension.builder()
    : color = MyoroColors.blue1.withValues(alpha: kMyoroMultiplier * 5 / 100),
      widgetOptionsButtonIcon = Icons.menu,
      widgetOptionsModalSpacing = 10,
      widgetOptionsModalPadding = const EdgeInsets.only(top: 4),
      widgetOptionsModalItemPadding = const EdgeInsets.symmetric(horizontal: kMyoroMultiplier * 2),
      widgetOptionsModalCloseButtonPadding = const EdgeInsets.only(top: kMyoroMultiplier, right: kMyoroMultiplier);

  /// [Color] of [_WidgetShowcase].
  final Color color;

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

  @override
  WidgetShowcaseScreenThemeExtension lerp(
    covariant ThemeExtension<WidgetShowcaseScreenThemeExtension>? other,
    double t,
  ) {
    if (other is! WidgetShowcaseScreenThemeExtension) return this;
    return copyWith(
      color: Color.lerp(color, other.color, t),
      widgetOptionsButtonIcon: myoroLerp(widgetOptionsButtonIcon, other.widgetOptionsButtonIcon, t),
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
    );
  }
}
