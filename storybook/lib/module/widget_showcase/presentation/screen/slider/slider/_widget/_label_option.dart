part of '../myoro_sliders_widget_showcase_screen.dart';

/// [MyoroSliderConfiguration.label] option of [MyoroSlidersWidgetShowcaseScreen].
final class _LabelOption extends StatelessWidget {
  const _LabelOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroSlidersWidgetShowcaseScreenViewModel>();

    return MyoroInput(label: 'Label.', onChanged: (text) => viewModel.state.label = text);
  }
}
