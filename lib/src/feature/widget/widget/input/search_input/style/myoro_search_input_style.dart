import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_search_input_style.g.dart';

/// Style model of [MyoroSearchInput].
@immutable
@myoroModel
class MyoroSearchInputStyle with _$MyoroSearchInputStyleMixin {
  /// Lerp function.
  static MyoroSearchInputStyle lerp(MyoroSearchInputStyle? a, MyoroSearchInputStyle? b, double t) {
    return MyoroSearchInputStyle(
      searchButtonIconConfiguration: MyoroIconConfiguration.lerp(
        a?.searchButtonIconConfiguration,
        b?.searchButtonIconConfiguration,
        t,
      ),
      dropdownConstraints: BoxConstraints.lerp(a?.dropdownConstraints, b?.dropdownConstraints, t),
    );
  }

  /// Default constructor.
  const MyoroSearchInputStyle({this.searchButtonIconConfiguration, this.dropdownConstraints});

  /// [MyoroIconConfiguration] of the search button.
  final MyoroIconConfiguration? searchButtonIconConfiguration;

  /// [BoxConstraints] of the dropdown.
  final BoxConstraints? dropdownConstraints;
}
