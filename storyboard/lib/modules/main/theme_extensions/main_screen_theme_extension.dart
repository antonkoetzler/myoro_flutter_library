import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// [ThemeExtension] of [MainScreen].
@immutable
final class MainScreenThemeExtension
    extends ThemeExtension<MainScreenThemeExtension> {
  /// [EdgeInsets] of [_WidgetCategoryDropdownButton].
  final EdgeInsets widgetCategoryDropdownButtonPadding;

  const MainScreenThemeExtension({
    required this.widgetCategoryDropdownButtonPadding,
  });

  MainScreenThemeExtension.fake()
    : widgetCategoryDropdownButtonPadding = myoroFake<EdgeInsets>();

  const MainScreenThemeExtension.builder()
    : widgetCategoryDropdownButtonPadding = const EdgeInsets.only(
        left: 10,
        right: 10,
        bottom: 10,
      );

  @override
  MainScreenThemeExtension copyWith({
    EdgeInsets? widgetCategoryDropdownButtonPadding,
  }) {
    return MainScreenThemeExtension(
      widgetCategoryDropdownButtonPadding:
          widgetCategoryDropdownButtonPadding ??
          this.widgetCategoryDropdownButtonPadding,
    );
  }

  @override
  MainScreenThemeExtension lerp(
    covariant ThemeExtension<MainScreenThemeExtension>? other,
    double t,
  ) {
    if (other is! MainScreenThemeExtension) return this;
    return copyWith(
      widgetCategoryDropdownButtonPadding: EdgeInsets.lerp(
        widgetCategoryDropdownButtonPadding,
        other.widgetCategoryDropdownButtonPadding,
        t,
      ),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MainScreenThemeExtension &&
        other.runtimeType == runtimeType &&
        other.widgetCategoryDropdownButtonPadding ==
            widgetCategoryDropdownButtonPadding;
  }

  @override
  int get hashCode {
    return Object.hashAll([widgetCategoryDropdownButtonPadding]);
  }

  @override
  String toString() =>
      'MainScreenThemeExtension(\n'
      '  widgetCategoryDropdownButtonPadding: $widgetCategoryDropdownButtonPadding,\n'
      ');';
}
