import 'package:equatable/equatable.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// Configuration model of [SliderWidgetShowcaseOption].
final class SliderWidgetShowcaseOptionConfiguration extends Equatable {
  const SliderWidgetShowcaseOptionConfiguration({
    required this.label,
    this.checkboxOnChanged,
    required this.sliderOnChanged,
  });

  /// [MyoroCheckboxConfiguration.label]
  final String label;

  /// [MyoroCheckboxConfiguration.onChanged]
  final SliderWidgetShowcaseOptionCheckboxOnChanged? checkboxOnChanged;

  /// [MyoroSliderConfiguration.onChanged]
  final MyoroSliderOnChanged sliderOnChanged;

  SliderWidgetShowcaseOptionConfiguration copyWith({
    String? label,
    SliderWidgetShowcaseOptionCheckboxOnChanged? checkboxOnChanged,
    bool checkboxOnChangedProvided = true,
    MyoroSliderOnChanged? sliderOnChanged,
  }) {
    return SliderWidgetShowcaseOptionConfiguration(
      label: label ?? this.label,
      checkboxOnChanged: checkboxOnChangedProvided ? (checkboxOnChanged ?? this.checkboxOnChanged) : null,
      sliderOnChanged: sliderOnChanged ?? this.sliderOnChanged,
    );
  }

  @override
  List<Object?> get props {
    return [label, checkboxOnChanged, sliderOnChanged];
  }

  @override
  String toString() =>
      'SliderWidgetShowcaseOptionConfiguration(\n'
      '  label: $label,\n'
      '  checkboxOnChanged: $checkboxOnChanged,\n'
      '  sliderOnChanged: $sliderOnChanged,\n'
      ');';
}
