part of '../myoro_slider_widget_showcase.dart';

/// [MyoroSliderConfiguration.label] option of [MyoroSliderWidgetShowcase].
final class _LabelOption extends StatelessWidget {
  const _LabelOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroSliderWidgetShowcaseViewModel>();

    return MyoroInput(
      configuration: MyoroInputConfiguration(label: 'Label.', onChanged: (text) => viewModel.state.label = text),
    );
  }
}
