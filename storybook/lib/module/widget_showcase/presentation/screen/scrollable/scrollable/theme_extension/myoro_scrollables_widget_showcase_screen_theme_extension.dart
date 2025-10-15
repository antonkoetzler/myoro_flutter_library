import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storybook/storybook.dart';

part 'myoro_scrollables_widget_showcase_screen_theme_extension.g.dart';

/// [ThemeExtension] of [MyoroScrollablesWidgetShowcaseScreen].
@immutable
@myoroThemeExtension
final class MyoroScrollablesWidgetShowcaseScreenThemeExtension
    extends ThemeExtension<MyoroScrollablesWidgetShowcaseScreenThemeExtension>
    with _$MyoroScrollablesWidgetShowcaseScreenThemeExtensionMixin {
  /// Default constructor.
  const MyoroScrollablesWidgetShowcaseScreenThemeExtension({required this.scrollableConstraints});

  /// Creates a fake instance of [MyoroScrollablesWidgetShowcaseScreenThemeExtension].
  MyoroScrollablesWidgetShowcaseScreenThemeExtension.fake() : scrollableConstraints = myoroFake<BoxConstraints>();

  /// Creates a builder instance of [MyoroScrollablesWidgetShowcaseScreenThemeExtension].
  const MyoroScrollablesWidgetShowcaseScreenThemeExtension.builder()
    : scrollableConstraints = const BoxConstraints(maxHeight: 300);

  /// [BoxConstraints] of a scrollable.
  final BoxConstraints scrollableConstraints;

  @override
  MyoroScrollablesWidgetShowcaseScreenThemeExtension lerp(
    MyoroScrollablesWidgetShowcaseScreenThemeExtension? other,
    double t,
  ) {
    if (other is! MyoroScrollablesWidgetShowcaseScreenThemeExtension) return this;
    return copyWith(scrollableConstraints: BoxConstraints.lerp(scrollableConstraints, other.scrollableConstraints, t));
  }
}
