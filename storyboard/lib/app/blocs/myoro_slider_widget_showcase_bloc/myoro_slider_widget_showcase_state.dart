part of 'myoro_slider_widget_showcase_bloc.dart';

final class MyoroSliderWidgetShowcaseState extends Equatable {
  /// [MyoroSlider.label].
  final String label;

  /// [MyoroSlider.labelTextStyle].
  final TextStyle? labelTextStyle;
  final bool labelTextStyleEnabled;

  /// [MyoroSlider.width].
  final double width;

  /// [MyoroSlider.currentValueIndicatorTextBuilder].
  final bool currentValueIndicatorTextBuilderEnabled;

  /// [MyoroSlider.maxValueIndicatorTextBuilder].
  final bool maxValueIndicatorTextBuilderEnabled;

  /// [MyoroSlider.footerIndicatorTextBuilder].
  final bool footerIndicatorTextBuilderEnabled;

  const MyoroSliderWidgetShowcaseState({
    this.label = '',
    this.labelTextStyle,
    this.labelTextStyleEnabled = false,
    required this.width,
    this.currentValueIndicatorTextBuilderEnabled = false,
    this.maxValueIndicatorTextBuilderEnabled = false,
    this.footerIndicatorTextBuilderEnabled = false,
  });

  MyoroSliderWidgetShowcaseState copyWith({
    String? label,
    TextStyle? labelTextStyle,
    bool? labelTextStyleEnabled,
    double? width,
    bool? currentValueIndicatorTextBuilderEnabled,
    bool? maxValueIndicatorTextBuilderEnabled,
    bool? footerIndicatorTextBuilderEnabled,
  }) {
    labelTextStyleEnabled = labelTextStyleEnabled ?? this.labelTextStyleEnabled;

    return MyoroSliderWidgetShowcaseState(
      label: label ?? this.label,
      labelTextStyle: labelTextStyleEnabled ? (labelTextStyle ?? this.labelTextStyle) : null,
      labelTextStyleEnabled: labelTextStyleEnabled,
      width: width ?? this.width,
      currentValueIndicatorTextBuilderEnabled: currentValueIndicatorTextBuilderEnabled ?? this.currentValueIndicatorTextBuilderEnabled,
      maxValueIndicatorTextBuilderEnabled: maxValueIndicatorTextBuilderEnabled ?? this.maxValueIndicatorTextBuilderEnabled,
      footerIndicatorTextBuilderEnabled: footerIndicatorTextBuilderEnabled ?? this.footerIndicatorTextBuilderEnabled,
    );
  }

  @override
  String toString() => ''
      'MyoroSliderWidgetShowcaseState(\n'
      '  label: $label,\n'
      '  labelTextStyle: $labelTextStyle,\n'
      '  labelTextStyleEnabled: $labelTextStyleEnabled,\n'
      '  width: $width,\n'
      '  currentValueIndicatorTextBuilderEnabled: $currentValueIndicatorTextBuilderEnabled,\n'
      '  maxValueIndicatorTextBuilderEnabled: $maxValueIndicatorTextBuilderEnabled,\n'
      '  footerIndicatorTextBuilderEnabled: $footerIndicatorTextBuilderEnabled,\n'
      ');';

  @override
  List<Object?> get props {
    return [
      label,
      labelTextStyle,
      labelTextStyleEnabled,
      width,
      currentValueIndicatorTextBuilderEnabled,
      maxValueIndicatorTextBuilderEnabled,
      footerIndicatorTextBuilderEnabled,
    ];
  }
}
