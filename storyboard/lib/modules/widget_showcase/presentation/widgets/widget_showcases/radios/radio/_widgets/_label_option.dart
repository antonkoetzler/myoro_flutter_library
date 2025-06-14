part of '../myoro_radio_widget_showcase.dart';

/// [MyoroRadioConfiguration.label] option of [MyoroRadioWidgetShowcase].
final class _LabelOption extends StatelessWidget {
  const _LabelOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroRadioWidgetShowcaseViewModel>();

    return MyoroInput(
      configuration: MyoroInputConfiguration(label: 'Label.', onChanged: (text) => viewModel.state.label = text),
    );
  }
}
