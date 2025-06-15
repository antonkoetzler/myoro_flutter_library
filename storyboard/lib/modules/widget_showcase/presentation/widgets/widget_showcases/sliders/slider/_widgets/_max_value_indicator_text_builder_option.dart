part of '../myoro_slider_widget_showcase.dart';

/// [MyoroSliderConfiguration.maxValueIndicatorTextBuilder] option of [MyoroSliderWidgetShowcase].
final class _MaxValueIndicatorTextBuilderOption extends StatelessWidget {
  const _MaxValueIndicatorTextBuilderOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroSliderWidgetShowcaseViewModel>();

    return MyoroCheckbox(
      configuration: MyoroCheckboxConfiguration(
        label: 'Show max value of slider on the right?',
        onChanged: (value) => viewModel.state.maxValueIndicatorTextBuilderEnabled = value,
      ),
    );
  }
}
