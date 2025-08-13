// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_range_slider_configuration.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

/// Apply this mixin to [MyoroRangeSliderConfiguration] once the code is generated.
///
/// ```dart
/// class MyoroRangeSliderConfiguration with _$MyoroRangeSliderConfigurationMixin {}
/// ```
mixin _$MyoroRangeSliderConfigurationMixin {
  MyoroRangeSliderConfiguration get self => this as MyoroRangeSliderConfiguration;

  @override
  bool operator ==(Object other) {
    return other is MyoroRangeSliderConfiguration &&
        other.runtimeType == runtimeType &&
        other.values == self.values &&
        other.onChanged == self.onChanged;
  }

  @override
  int get hashCode {
    return Object.hash(self.values, self.onChanged);
  }

  @override
  String toString() =>
      'MyoroRangeSliderConfiguration(\n'
      '  values: ${self.values},\n'
      '  onChanged: ${self.onChanged},\n'
      ');';
}

/// Extension class for @myoroModel to place the copyWith function.
extension $MyoroRangeSliderConfigurationExtension on MyoroRangeSliderConfiguration {
  MyoroRangeSliderConfiguration copyWith({RangeValues? values, void Function(RangeValues)? onChanged}) {
    return MyoroRangeSliderConfiguration(values: values ?? self.values, onChanged: onChanged ?? self.onChanged);
  }
}
