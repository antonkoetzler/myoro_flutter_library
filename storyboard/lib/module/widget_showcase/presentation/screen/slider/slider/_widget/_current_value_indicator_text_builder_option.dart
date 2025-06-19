part of '../myoro_slider_widget_showcase.dart';

/// [MyoroSliderConfiguration.currentValueIndicatorTextBuilder] of [MyoroSliderWidgetShowcase].
final class _CurrentValueIndicatorTextBuilderOption extends StatelessWidget {
  const _CurrentValueIndicatorTextBuilderOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroSliderWidgetShowcaseViewModel>();

    return MyoroCheckbox(
      configuration: MyoroCheckboxConfiguration(
        label: 'Show current value of slider on the left?',
        onChanged: (value) => viewModel.state.currentValueIndicatorTextBuilderEnabled = value,
      ),
    );
  }
}
