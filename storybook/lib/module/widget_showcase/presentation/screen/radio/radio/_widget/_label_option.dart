part of '../myoro_radio_widget_showcase_screen.dart';

/// [MyoroRadioConfiguration.label] option of [MyoroRadioWidgetShowcaseScreen].
final class _LabelOption extends StatelessWidget {
  const _LabelOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroRadioWidgetShowcaseScreenViewModel>();

    return MyoroInput(label: 'Label.', onChanged: (text) => viewModel.state.label = text);
  }
}
