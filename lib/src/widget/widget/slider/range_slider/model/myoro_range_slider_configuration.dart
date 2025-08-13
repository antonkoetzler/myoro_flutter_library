import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_range_slider_configuration.g.dart';

/// Configuration model of [MyoroRangeSlider].
@immutable
@myoroModel
final class MyoroRangeSliderConfiguration with _$MyoroRangeSliderConfigurationMixin {
  static const valuesDefaultValue = RangeValues(0, 0);

  const MyoroRangeSliderConfiguration({this.values = valuesDefaultValue, required this.onChanged});

  /// [RangeSlider.values]
  final RangeValues values;

  /// [RangeSlider.onChanged]
  final MyoroRangeSliderOnChanged onChanged;
}
