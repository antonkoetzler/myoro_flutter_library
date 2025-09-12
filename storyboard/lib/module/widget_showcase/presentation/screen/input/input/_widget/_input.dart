part of '../myoro_input_widget_showcase_screen.dart';

/// Actual [MyoroInput] of [MyoroInputWidgetShowcaseScreen].
final class _Input extends StatelessWidget {
  const _Input();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroInputWidgetShowcaseScreenViewModel>();
    return MyoroInput(configuration: viewModel.buildConfiguration(context, const _Suffix()));
  }
}
