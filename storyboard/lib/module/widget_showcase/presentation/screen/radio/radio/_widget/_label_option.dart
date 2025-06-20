part of '../myoro_radio_widget_showcase_screen.dart';

/// [MyoroRadioConfiguration.label] option of [MyoroRadioWidgetShowcaseScreen].
final class _LabelOption extends StatelessWidget {
  const _LabelOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroRadioWidgetShowcaseScreenViewModel>();

    return MyoroInput(
      configuration: MyoroInputConfiguration(label: 'Label.', onChanged: (text) => viewModel.state.label = text),
    );
  }
}
