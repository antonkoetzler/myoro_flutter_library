part of '../myoro_input_widget_showcase.dart';

/// [MyoroInputConfiguration.label] option of [MyoroInputWidgetShowcase].
final class _LabelOption extends StatelessWidget {
  const _LabelOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroInputWidgetShowcaseViewModel>();

    return MyoroInput(
      configuration: MyoroInputConfiguration(label: 'Label', onChanged: (text) => viewModel.state.label = text),
    );
  }
}
