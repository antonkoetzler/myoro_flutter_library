part of '../myoro_sliders_widget_showcase_screen.dart';

/// [MyoroSliderConfiguration.maxValueText] option of [MyoroSlidersWidgetShowcaseScreen].
final class _MaxValueTextOption extends StatelessWidget {
  const _MaxValueTextOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroSlidersWidgetShowcaseScreenViewModel>();

    return MyoroCheckbox(
      configuration: MyoroCheckboxConfiguration(
        label: 'Show max value of slider on the right?',
        onChanged: (value) => viewModel.state.maxValueTextEnabled = value,
      ),
    );
  }
}
