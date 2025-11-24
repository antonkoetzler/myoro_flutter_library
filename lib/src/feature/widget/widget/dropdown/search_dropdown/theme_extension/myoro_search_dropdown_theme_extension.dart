import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_search_dropdown_theme_extension.g.dart';

/// [ThemeExtension] for [MyoroSearchDropdown].
@immutable
@myoroThemeExtension
class MyoroSearchDropdownThemeExtension extends ThemeExtension<MyoroSearchDropdownThemeExtension>
    with _$MyoroSearchDropdownThemeExtensionMixin
    implements MyoroSearchDropdownStyle {
  /// Default constructor.
  const MyoroSearchDropdownThemeExtension({this.searchButtonIconSize, this.dropdownConstraints, this.searchButtonIcon});

  /// Fake constructor.
  MyoroSearchDropdownThemeExtension.fake()
    : searchButtonIconSize = myoroNullableFake<double>(),
      dropdownConstraints = const BoxConstraints(),
      searchButtonIcon = myoroNullableFake<IconData>();

  /// Builder constructor.
  const MyoroSearchDropdownThemeExtension.builder()
    : searchButtonIconSize = kMyoroMultiplier * 4,
      dropdownConstraints = const BoxConstraints(maxHeight: kMyoroMultiplier * 100),
      searchButtonIcon = Icons.search;

  /// [MyoroIconStyle] of the search button.
  @override
  final double? searchButtonIconSize;

  /// [BoxConstraints] of the dropdown.
  @override
  final BoxConstraints? dropdownConstraints;

  /// [IconData] of the search button.
  @override
  final IconData? searchButtonIcon;

  /// Lerp function.
  @override
  MyoroSearchDropdownThemeExtension lerp(MyoroSearchDropdownThemeExtension? other, double t) {
    if (other is! MyoroSearchDropdownThemeExtension) return this;
    final style = MyoroSearchDropdownStyle.lerp(this, other, t);
    return MyoroSearchDropdownThemeExtension(
      searchButtonIconSize: style.searchButtonIconSize,
      dropdownConstraints: style.dropdownConstraints,
    );
  }
}
