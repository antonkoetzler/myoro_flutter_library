import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_filter_panel_theme_extension.g.dart';

/// Theme extension of [MyoroFilterPanel].
@immutable
@myoroThemeExtension
final class MyoroFilterPanelThemeExtension extends ThemeExtension<MyoroFilterPanelThemeExtension>
    with _$MyoroFilterPanelThemeExtensionMixin
    implements MyoroFilterPanelStyle {
  /// Default constructor.
  const MyoroFilterPanelThemeExtension({this.searchBarFiltersSpacing, this.filtersSpacing});

  /// Fake constructor.
  MyoroFilterPanelThemeExtension.fake()
    : searchBarFiltersSpacing = myoroNullableFake<double>(),
      filtersSpacing = myoroNullableFake<double>();

  /// Builder constructor.
  const MyoroFilterPanelThemeExtension.builder()
    : searchBarFiltersSpacing = kMyoroMultiplier * 1.5,
      filtersSpacing = kMyoroMultiplier * 1.5;

  /// Spacing between the search bar and the filters.
  @override
  final double? searchBarFiltersSpacing;

  /// Spacing between the filters.
  @override
  final double? filtersSpacing;

  /// Lerp function.
  @override
  MyoroFilterPanelThemeExtension lerp(MyoroFilterPanelThemeExtension? other, double t) {
    if (other is! MyoroFilterPanelThemeExtension) return this;
    final style = MyoroFilterPanelStyle.lerp(this, other, t);
    return MyoroFilterPanelThemeExtension(
      searchBarFiltersSpacing: style.searchBarFiltersSpacing,
      filtersSpacing: style.filtersSpacing,
    );
  }
}
