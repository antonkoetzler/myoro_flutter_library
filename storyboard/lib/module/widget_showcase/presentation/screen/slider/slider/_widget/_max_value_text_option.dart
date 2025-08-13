part of '../myoro_slider_widget_showcase_screen.dart';

/// [MyoroSliderConfiguration.maxValueText] option of [MyoroSliderWidgetShowcaseScreen].
final class _MaxValueTextOption extends StatelessWidget {
  const _MaxValueTextOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroSliderWidgetShowcaseScreenViewModel>();

    return MyoroCheckbox(
      configuration: MyoroCheckboxConfiguration(
        label: 'Show max value of slider on the right?',
        onChanged: (value) => viewModel.state.maxValueTextEnabled = value,
      ),
    );
  }
}
