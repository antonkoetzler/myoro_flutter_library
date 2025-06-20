part of '../myoro_slider_widget_showcase_screen.dart';

/// [MyoroSliderConfiguration.label] option of [MyoroSliderWidgetShowcaseScreen].
final class _LabelOption extends StatelessWidget {
  const _LabelOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroSliderWidgetShowcaseScreenViewModel>();

    return MyoroInput(
      configuration: MyoroInputConfiguration(label: 'Label.', onChanged: (text) => viewModel.state.label = text),
    );
  }
}
