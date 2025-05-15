import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// [ThemeExtension] for [WidgetShowcase].
///
/// TODO: Test needs to be rewritten.
@immutable
final class WidgetShowcaseThemeExtension
    extends ThemeExtension<WidgetShowcaseThemeExtension> {
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

  /// [MyoroTooltipConfiguration.margin] of [_WidgetOptionsButton].
  final EdgeInsets widgetOptionsButtonTooltipMargin;

  /// [EdgeInsets] of an item of [WidgetShowcase.widgetOptions].
  final EdgeInsets widgetOptionsItemPadding;

  /// [EdgeInsets] of [MyoroModalConfiguration.closeButtonPadding] of [_WidgetOptions].
  final EdgeInsets widgetOptionsCloseButtonPadding;

  /// Size of [_WidgetOptions]'s [MyoroModal].
  final double widgetOptionsModalDesktopWidth;

  const WidgetShowcaseThemeExtension({
    required this.wrapperDecoration,
    required this.wrapperPadding,
    required this.wrapperContentPadding,
    required this.wrapperAlignment,
    required this.widgetOptionsButtonIcon,
    required this.widgetOptionsButtonTooltipMargin,
    required this.widgetOptionsItemPadding,
    required this.widgetOptionsCloseButtonPadding,
    required this.widgetOptionsModalDesktopWidth,
  });

  WidgetShowcaseThemeExtension.fake()
    : wrapperDecoration = myoroFake<BoxDecoration>(),
      wrapperPadding = myoroFake<EdgeInsets>(),
      wrapperContentPadding = myoroFake<EdgeInsets>(),
      widgetOptionsButtonIcon = myoroFake<IconData>(),
      wrapperAlignment = myoroFake<Alignment>(),
      widgetOptionsButtonTooltipMargin = myoroFake<EdgeInsets>(),
      widgetOptionsItemPadding = myoroFake<EdgeInsets>(),
      widgetOptionsCloseButtonPadding = myoroFake<EdgeInsets>(),
      widgetOptionsModalDesktopWidth = faker.randomGenerator.decimal(
        scale: 500,
      );

  WidgetShowcaseThemeExtension.builder(ColorScheme colorScheme)
    : wrapperDecoration = BoxDecoration(
        color: MyoroColorDesignSystem.attention.withValues(alpha: 0.1),
        border: Border.all(
          width: kMyoroBorderLength,
          color: MyoroColorDesignSystem.attention,
        ),

        borderRadius: BorderRadius.circular(kMyoroBorderRadiusLength),
      ),
      wrapperPadding = const EdgeInsets.all(20),
      wrapperContentPadding = const EdgeInsets.all(20),
      wrapperAlignment = Alignment.center,
      widgetOptionsButtonIcon = Icons.menu,
      widgetOptionsButtonTooltipMargin = const EdgeInsets.only(
        bottom: 10,
        right: 31,
      ),
      widgetOptionsItemPadding = const EdgeInsets.all(10),
      widgetOptionsCloseButtonPadding = const EdgeInsets.all(5),
      widgetOptionsModalDesktopWidth = 400;

  @override
  WidgetShowcaseThemeExtension copyWith({
    BoxDecoration? wrapperDecoration,
    EdgeInsets? wrapperPadding,
    EdgeInsets? wrapperContentPadding,
    Alignment? wrapperAlignment,
    IconData? widgetOptionsButtonIcon,
    EdgeInsets? widgetOptionsButtonTooltipMargin,
    EdgeInsets? widgetOptionsItemPadding,
    EdgeInsets? widgetOptionsCloseButtonPadding,
    double? widgetOptionsModalDesktopWidth,
  }) {
    return WidgetShowcaseThemeExtension(
      wrapperDecoration: wrapperDecoration ?? this.wrapperDecoration,
      wrapperPadding: wrapperPadding ?? this.wrapperPadding,
      wrapperContentPadding:
          wrapperContentPadding ?? this.wrapperContentPadding,
      wrapperAlignment: wrapperAlignment ?? this.wrapperAlignment,
      widgetOptionsButtonIcon:
          widgetOptionsButtonIcon ?? this.widgetOptionsButtonIcon,
      widgetOptionsButtonTooltipMargin:
          widgetOptionsButtonTooltipMargin ??
          this.widgetOptionsButtonTooltipMargin,
      widgetOptionsItemPadding:
          widgetOptionsItemPadding ?? this.widgetOptionsItemPadding,
      widgetOptionsCloseButtonPadding:
          widgetOptionsCloseButtonPadding ??
          this.widgetOptionsCloseButtonPadding,
      widgetOptionsModalDesktopWidth:
          widgetOptionsModalDesktopWidth ?? this.widgetOptionsModalDesktopWidth,
    );
  }

  @override
  WidgetShowcaseThemeExtension lerp(
    covariant ThemeExtension<WidgetShowcaseThemeExtension>? other,
    double t,
  ) {
    if (other is! WidgetShowcaseThemeExtension) return this;
    return copyWith(
      wrapperDecoration: BoxDecoration.lerp(
        wrapperDecoration,
        other.wrapperDecoration,
        t,
      ),
      wrapperPadding: EdgeInsets.lerp(wrapperPadding, other.wrapperPadding, t),
      wrapperContentPadding: EdgeInsets.lerp(
        wrapperContentPadding,
        other.wrapperContentPadding,
        t,
      ),
      wrapperAlignment: Alignment.lerp(
        wrapperAlignment,
        other.wrapperAlignment,
        t,
      ),
      widgetOptionsButtonIcon: myoroLerp(
        widgetOptionsButtonIcon,
        other.widgetOptionsButtonIcon,
        t,
      ),
      widgetOptionsButtonTooltipMargin: EdgeInsets.lerp(
        widgetOptionsButtonTooltipMargin,
        other.widgetOptionsButtonTooltipMargin,
        t,
      ),
      widgetOptionsItemPadding: EdgeInsets.lerp(
        widgetOptionsItemPadding,
        other.widgetOptionsItemPadding,
        t,
      ),
      widgetOptionsCloseButtonPadding: EdgeInsets.lerp(
        widgetOptionsCloseButtonPadding,
        other.widgetOptionsCloseButtonPadding,
        t,
      ),
      widgetOptionsModalDesktopWidth: lerpDouble(
        widgetOptionsModalDesktopWidth,
        other.widgetOptionsModalDesktopWidth,
        t,
      ),
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
        other.widgetOptionsButtonTooltipMargin ==
            widgetOptionsButtonTooltipMargin &&
        other.widgetOptionsItemPadding == widgetOptionsItemPadding &&
        other.widgetOptionsCloseButtonPadding ==
            widgetOptionsCloseButtonPadding &&
        other.widgetOptionsModalDesktopWidth == widgetOptionsModalDesktopWidth;
  }

  @override
  int get hashCode {
    return Object.hash(
      wrapperDecoration,
      wrapperPadding,
      wrapperContentPadding,
      wrapperAlignment,
      widgetOptionsButtonIcon,
      widgetOptionsButtonTooltipMargin,
      widgetOptionsItemPadding,
      widgetOptionsCloseButtonPadding,
      widgetOptionsModalDesktopWidth,
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
      '  widgetOptionsButtonTooltipMargin: $widgetOptionsButtonTooltipMargin,\n'
      '  widgetOptionsItemPadding: $widgetOptionsItemPadding,\n'
      '  widgetOptionsCloseButtonPadding: $widgetOptionsCloseButtonPadding,\n'
      '  widgetOptionsModalDesktopWidth: $widgetOptionsModalDesktopWidth,\n'
      ');';
}
