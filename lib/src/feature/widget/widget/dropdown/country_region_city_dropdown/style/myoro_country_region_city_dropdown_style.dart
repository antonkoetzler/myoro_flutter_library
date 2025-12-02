import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_country_region_city_dropdown_style.g.dart';

/// Style of [MyoroCountryRegionCityDropdown].
@immutable
@myoroModel
class MyoroCountryRegionCityDropdownStyle with _$MyoroCountryRegionCityDropdownStyleMixin {
  /// Lerp function.
  static MyoroCountryRegionCityDropdownStyle lerp(
    MyoroCountryRegionCityDropdownStyle? a,
    MyoroCountryRegionCityDropdownStyle? b,
    double t,
  ) {
    return MyoroCountryRegionCityDropdownStyle(spacing: lerpDouble(a?.spacing, b?.spacing, t));
  }

  /// Default constructor.
  const MyoroCountryRegionCityDropdownStyle({this.spacing});

  /// Fake constructor.
  MyoroCountryRegionCityDropdownStyle.fake() : spacing = myoroNullableFake<double>();

  /// Spacing between dropdowns.
  final double? spacing;
}
