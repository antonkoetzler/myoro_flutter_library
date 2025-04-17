part of 'myoro_slider_widget_showcase_bloc.dart';

final class MyoroSliderWidgetShowcaseState extends Equatable {
  /// [MyoroSlider.label].
  final String label;

  /// [MyoroSlider.labelTextStyle].
  final TextStyle? labelTextStyle;

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
    required this.width,
    this.currentValueIndicatorTextBuilderEnabled = false,
    this.maxValueIndicatorTextBuilderEnabled = false,
    this.footerIndicatorTextBuilderEnabled = false,
  });

  MyoroSliderWidgetShowcaseState copyWith({
    String? label,
    TextStyle? labelTextStyle,
    bool labelTextStyleProvided = true,
    double? width,
    bool? currentValueIndicatorTextBuilderEnabled,
    bool? maxValueIndicatorTextBuilderEnabled,
    bool? footerIndicatorTextBuilderEnabled,
  }) {
    return MyoroSliderWidgetShowcaseState(
      label: label ?? this.label,
      labelTextStyle: labelTextStyleProvided ? (labelTextStyle ?? this.labelTextStyle) : null,
      width: width ?? this.width,
      currentValueIndicatorTextBuilderEnabled: currentValueIndicatorTextBuilderEnabled ?? this.currentValueIndicatorTextBuilderEnabled,
      maxValueIndicatorTextBuilderEnabled: maxValueIndicatorTextBuilderEnabled ?? this.maxValueIndicatorTextBuilderEnabled,
      footerIndicatorTextBuilderEnabled: footerIndicatorTextBuilderEnabled ?? this.footerIndicatorTextBuilderEnabled,
    );
  }

  @override
  String toString() =>
      ''
      'MyoroSliderWidgetShowcaseState(\n'
      '  label: $label,\n'
      '  labelTextStyle: $labelTextStyle,\n'
      '  width: $width,\n'
      '  currentValueIndicatorTextBuilderEnabled: $currentValueIndicatorTextBuilderEnabled,\n'
      '  maxValueIndicatorTextBuilderEnabled: $maxValueIndicatorTextBuilderEnabled,\n'
      '  footerIndicatorTextBuilderEnabled: $footerIndicatorTextBuilderEnabled,\n'
      ');';

  @override
  List<Object?> get props {
    return [label, labelTextStyle, width, currentValueIndicatorTextBuilderEnabled, maxValueIndicatorTextBuilderEnabled, footerIndicatorTextBuilderEnabled];
  }
}
