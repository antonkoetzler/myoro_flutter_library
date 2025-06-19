part of '../myoro_form_widget_showcase.dart';

/// [MyoroInput] within the [MyoroForm] in [_Widget].
final class _Input extends StatelessWidget {
  const _Input();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroFormWidgetShowcaseViewModel>();
    return MyoroInput(configuration: MyoroInputConfiguration(controller: viewModel.state.inputController));
  }
}
