import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// [ThemeExtension] of [MyoroResizeDividerWidgetShowcase].
@immutable
final class MyoroResizeDividerWidgetShowcaseThemeExtension
    extends ThemeExtension<MyoroResizeDividerWidgetShowcaseThemeExtension> {
  /// Color of the [Container]s beside the divider.
  final Color containerColor;

  /// Padding of [_AreYouSilly].
  final EdgeInsets areYouSillyPadding;

  const MyoroResizeDividerWidgetShowcaseThemeExtension({
    required this.containerColor,
    required this.areYouSillyPadding,
  });

  MyoroResizeDividerWidgetShowcaseThemeExtension.fake()
    : containerColor = myoroFake<Color>(),
      areYouSillyPadding = myoroFake<EdgeInsets>();

  MyoroResizeDividerWidgetShowcaseThemeExtension.builder(
    ColorScheme colorScheme,
  ) : containerColor = colorScheme.onPrimary,
      areYouSillyPadding = const EdgeInsets.all(50);

  @override
  MyoroResizeDividerWidgetShowcaseThemeExtension copyWith({
    Color? containerColor,
    EdgeInsets? areYouSillyPadding,
  }) {
    return MyoroResizeDividerWidgetShowcaseThemeExtension(
      containerColor: containerColor ?? this.containerColor,
      areYouSillyPadding: areYouSillyPadding ?? this.areYouSillyPadding,
    );
  }

  @override
  MyoroResizeDividerWidgetShowcaseThemeExtension lerp(
    covariant ThemeExtension<MyoroResizeDividerWidgetShowcaseThemeExtension>?
    other,
    double t,
  ) {
    if (other is! MyoroResizeDividerWidgetShowcaseThemeExtension) return this;
    return copyWith(
      containerColor: Color.lerp(containerColor, other.containerColor, t),
      areYouSillyPadding: EdgeInsets.lerp(
        areYouSillyPadding,
        other.areYouSillyPadding,
        t,
      ),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroResizeDividerWidgetShowcaseThemeExtension &&
        other.runtimeType == runtimeType &&
        other.containerColor == containerColor &&
        other.areYouSillyPadding == areYouSillyPadding;
  }

  @override
  int get hashCode {
    return Object.hash(containerColor, areYouSillyPadding);
  }

  @override
  String toString() =>
      'MyoroResizeDividerWidgetShowcaseThemeExtension(\n'
      '  containerColor: $containerColor,\n'
      '  areYouSillyPadding: $areYouSillyPadding,\n'
      ');';
}
