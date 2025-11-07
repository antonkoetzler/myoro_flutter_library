import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_search_input_theme_extension.g.dart';

/// [ThemeExtension] for [MyoroSearchInput].
@immutable
@myoroThemeExtension
class MyoroSearchInputThemeExtension extends ThemeExtension<MyoroSearchInputThemeExtension>
    with _$MyoroSearchInputThemeExtensionMixin
    implements MyoroSearchInputStyle {
  /// Default constructor.
  const MyoroSearchInputThemeExtension({this.searchButtonIconConfiguration, this.dropdownConstraints});

  /// Fake constructor.
  MyoroSearchInputThemeExtension.fake()
    : searchButtonIconConfiguration = MyoroIconConfiguration.fake(),
      dropdownConstraints = const BoxConstraints();

  /// Builder constructor.
  const MyoroSearchInputThemeExtension.builder()
    : searchButtonIconConfiguration = const MyoroIconConfiguration(icon: Icons.search, size: kMyoroMultiplier * 4),
      dropdownConstraints = const BoxConstraints(maxHeight: kMyoroMultiplier * 100);

  /// [MyoroIconConfiguration] of the search button.
  @override
  final MyoroIconConfiguration? searchButtonIconConfiguration;

  /// [BoxConstraints] of the dropdown.
  @override
  final BoxConstraints? dropdownConstraints;

  /// Lerp function.
  @override
  MyoroSearchInputThemeExtension lerp(MyoroSearchInputThemeExtension? other, double t) {
    if (other is! MyoroSearchInputThemeExtension) return this;
    final style = MyoroSearchInputStyle.lerp(this, other, t);
    return MyoroSearchInputThemeExtension(
      searchButtonIconConfiguration: style.searchButtonIconConfiguration,
      dropdownConstraints: style.dropdownConstraints,
    );
  }
}
