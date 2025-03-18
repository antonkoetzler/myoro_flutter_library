part of 'myoro_slider_widget_showcase_bloc.dart';

@immutable
sealed class MyoroSliderWidgetShowcaseEvent {
  const MyoroSliderWidgetShowcaseEvent();
}

final class SetLabelEvent extends MyoroSliderWidgetShowcaseEvent {
  final String label;

  const SetLabelEvent(this.label);
}

final class SetLabelTextStyleEvent extends MyoroSliderWidgetShowcaseEvent {
  final TextStyle? labelTextStyle;

  const SetLabelTextStyleEvent([this.labelTextStyle]);
}

final class SetWidthEvent extends MyoroSliderWidgetShowcaseEvent {
  final double width;

  const SetWidthEvent(this.width);
}

final class SetCurrentValueIndicatorTextBuilderEnabledEvent
    extends MyoroSliderWidgetShowcaseEvent {
  final bool currentValueIndicatorTextBuilderEnabled;

  const SetCurrentValueIndicatorTextBuilderEnabledEvent(
      this.currentValueIndicatorTextBuilderEnabled);
}

final class SetMaxValueIndicatorTextBuilderEnabledEvent
    extends MyoroSliderWidgetShowcaseEvent {
  final bool maxValueIndicatorTextBuilderEnabled;

  const SetMaxValueIndicatorTextBuilderEnabledEvent(
      this.maxValueIndicatorTextBuilderEnabled);
}

final class SetFooterIndicatorTextBuilderEnabledEvent
    extends MyoroSliderWidgetShowcaseEvent {
  final bool footerIndicatorTextBuilderEnabled;

  const SetFooterIndicatorTextBuilderEnabledEvent(
      this.footerIndicatorTextBuilderEnabled);
}
