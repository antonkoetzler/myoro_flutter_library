part of '../myoro_sliders_widget_showcase_screen.dart';

/// [MyoroSliderConfiguration.currentValueText] of [MyoroSlidersWidgetShowcaseScreen].
final class _CurrentValueTextOption extends StatelessWidget {
  const _CurrentValueTextOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroSlidersWidgetShowcaseScreenViewModel>();

    return MyoroCheckbox(
      configuration: MyoroCheckboxConfiguration(
        label: 'Show current value of slider on the left?',
        onChanged: (value) => viewModel.state.currentValueTextEnabled = value,
      ),
    );
  }
}
