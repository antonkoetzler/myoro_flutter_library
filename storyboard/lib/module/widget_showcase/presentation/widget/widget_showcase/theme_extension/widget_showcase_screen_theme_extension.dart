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
    required this.padding,
    required this.decoration,
    required this.contentPadding,
    required this.widgetOptionsButtonIcon,
    required this.widgetOptionsModalSpacing,
    required this.widgetOptionsModalPadding,
    required this.widgetOptionsModalItemPadding,
    required this.widgetOptionsModalCloseButtonPadding,
  });

  // coverage:ignore-start
  WidgetShowcaseScreenThemeExtension.fake()
    : padding = myoroFake<EdgeInsets>(),
      decoration = myoroFake<BoxDecoration>(),
      contentPadding = myoroFake<EdgeInsets>(),
      widgetOptionsButtonIcon = myoroFake<IconData>(),
      widgetOptionsModalSpacing = faker.randomGenerator.decimal(scale: 24),
      widgetOptionsModalPadding = myoroFake<EdgeInsets>(),
      widgetOptionsModalItemPadding = myoroFake<EdgeInsets>(),
      widgetOptionsModalCloseButtonPadding = myoroFake<EdgeInsets>();
  // coverage:ignore-end

  WidgetShowcaseScreenThemeExtension.builder()
    : padding = const EdgeInsets.all(10),
      decoration = BoxDecoration(
        color: MyoroColors.blue1.withValues(alpha: 0.1),
        border: Border.all(width: kMyoroBorderLength, color: MyoroColors.blue1),
        borderRadius: BorderRadius.circular(kMyoroBorderRadiusLength),
      ),
      contentPadding = const EdgeInsets.all(10),
      widgetOptionsButtonIcon = Icons.menu,
      widgetOptionsModalSpacing = 10,
      widgetOptionsModalPadding = const EdgeInsets.only(top: 4),
      widgetOptionsModalItemPadding = const EdgeInsets.symmetric(horizontal: 8),
      widgetOptionsModalCloseButtonPadding = const EdgeInsets.only(top: 4, right: 4);

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

  /// [MyoroModalConfiguration.closeButtonPadding]
  final EdgeInsets widgetOptionsModalCloseButtonPadding;

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
      widgetOptionsModalCloseButtonPadding: EdgeInsets.lerp(
        widgetOptionsModalCloseButtonPadding,
        other.widgetOptionsModalCloseButtonPadding,
        t,
      ),
    );
  }
}
