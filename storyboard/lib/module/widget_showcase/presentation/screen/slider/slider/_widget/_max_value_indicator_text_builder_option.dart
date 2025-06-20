part of '../myoro_slider_widget_showcase_screen.dart';

/// [MyoroSliderConfiguration.maxValueIndicatorTextBuilder] option of [MyoroSliderWidgetShowcaseScreen].
final class _MaxValueIndicatorTextBuilderOption extends StatelessWidget {
  const _MaxValueIndicatorTextBuilderOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroSliderWidgetShowcaseScreenViewModel>();

    return MyoroCheckbox(
      configuration: MyoroCheckboxConfiguration(
        label: 'Show max value of slider on the right?',
        onChanged: (value) => viewModel.state.maxValueIndicatorTextBuilderEnabled = value,
      ),
    );
  }
}
