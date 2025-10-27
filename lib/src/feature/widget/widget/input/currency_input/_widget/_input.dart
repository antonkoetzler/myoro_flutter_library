part of '../myoro_currency_input.dart';

/// Input [Widget] of [MyoroCurrencyInput].
final class _Input extends StatelessWidget {
  const _Input();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroCurrencyInputViewModel>();
    final state = viewModel.state;
    final inputController = state.inputController;

    return MyoroInput(inputController: inputController, prefix: const _Prefix());
  }
}
