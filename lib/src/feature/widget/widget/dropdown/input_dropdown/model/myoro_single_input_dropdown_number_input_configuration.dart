import 'package:flutter/foundation.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_single_input_dropdown_number_input_configuration.g.dart';

/// Configuration model of [MyoroSingleInputDropdown] to make it a currency input.
@immutable
@myoroModel
class MyoroSingleInputDropdownNumberInputConfiguration with _$MyoroSingleInputDropdownNumberInputConfigurationMixin {
  /// Default value for [min].
  static const minDefaultValue = MyoroNumberInput.minDefaultValue;

  /// Default value for [decimalPlaces].
  static const decimalPlacesDefaultValue = MyoroNumberInput.decimalPlacesDefaultValue;

  /// Default constructor.
  const MyoroSingleInputDropdownNumberInputConfiguration({
    this.min = minDefaultValue,
    this.max,
    this.decimalPlaces = decimalPlacesDefaultValue,
  });

  /// Min value.
  final double min;

  /// Max value.
  final double? max;

  /// Decimal places.
  final int decimalPlaces;
}
