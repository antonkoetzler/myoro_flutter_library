part of '../myoro_slider_widget_showcase_screen.dart';

/// [MyoroSliderConfiguration.currentValueIndicatorTextBuilder] of [MyoroSliderWidgetShowcaseScreen].
final class _CurrentValueIndicatorTextBuilderOption extends StatelessWidget {
  const _CurrentValueIndicatorTextBuilderOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroSliderWidgetShowcaseScreenViewModel>();

    return MyoroCheckbox(
      configuration: MyoroCheckboxConfiguration(
        label: 'Show current value of slider on the left?',
        onChanged: (value) => viewModel.state.currentValueIndicatorTextBuilderEnabled = value,
      ),
    );
  }
}
