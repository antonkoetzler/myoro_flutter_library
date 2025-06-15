part of '../myoro_input_widget_showcase.dart';

/// Actual [MyoroInput] of [MyoroInputWidgetShowcase].
final class _Input extends StatelessWidget {
  const _Input();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroInputWidgetShowcaseViewModel>();
    return MyoroInput(configuration: viewModel.configuration(context));
  }
}
