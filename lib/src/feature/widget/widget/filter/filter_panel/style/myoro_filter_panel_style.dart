import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_filter_panel_style.g.dart';

/// Style model of [MyoroFilterPanel].
@immutable
@myoroModel
class MyoroFilterPanelStyle with _$MyoroFilterPanelStyleMixin {
  /// Lerp function.
  static MyoroFilterPanelStyle lerp(MyoroFilterPanelStyle? a, MyoroFilterPanelStyle? b, double t) {
    return MyoroFilterPanelStyle(
      searchBarFiltersSpacing: lerpDouble(a?.searchBarFiltersSpacing, b?.searchBarFiltersSpacing, t),
      filtersSpacing: lerpDouble(a?.filtersSpacing, b?.filtersSpacing, t),
    );
  }

  /// Default constructor.
  const MyoroFilterPanelStyle({this.searchBarFiltersSpacing, this.filtersSpacing});

  /// Fake constructor.
  MyoroFilterPanelStyle.fake()
    : searchBarFiltersSpacing = myoroNullableFake<double>(),
      filtersSpacing = myoroNullableFake<double>();

  /// Spacing between the search bar and the filters.
  final double? searchBarFiltersSpacing;

  /// Spacing between the filters.
  final double? filtersSpacing;
}
