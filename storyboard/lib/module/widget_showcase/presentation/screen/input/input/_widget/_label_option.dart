part of '../myoro_input_widget_showcase_screen.dart';

/// [MyoroInputConfiguration.label] option of [MyoroInputWidgetShowcaseScreen].
final class _LabelOption extends StatelessWidget {
  const _LabelOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroInputWidgetShowcaseScreenViewModel>();

    return MyoroInput(
      configuration: MyoroInputConfiguration(label: 'Label', onChanged: (text) => viewModel.state.label = text),
    );
  }
}
