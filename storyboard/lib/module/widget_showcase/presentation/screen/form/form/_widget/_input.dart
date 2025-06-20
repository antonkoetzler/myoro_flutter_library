part of '../myoro_form_widget_showcase_screen.dart';

/// [MyoroInput] within the [MyoroForm] in [_Widget].
final class _Input extends StatelessWidget {
  const _Input();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroFormWidgetShowcaseScreenViewModel>();
    return MyoroInput(configuration: MyoroInputConfiguration(controller: viewModel.state.inputController));
  }
}
