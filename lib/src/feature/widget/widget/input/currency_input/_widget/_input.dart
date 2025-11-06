part of '../myoro_currency_input.dart';

/// Input [Widget] of [MyoroCurrencyInput].
final class _Input extends StatelessWidget {
  const _Input();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroCurrencyInputViewModel>();
    final state = viewModel.state;
    final min = state.min;
    final max = state.max;
    final decimalPlaces = state.decimalPlaces;
    final selectedCurrencyController = state.selectedCurrencyController;
    final onChanged = state.onChanged;

    return ValueListenableBuilder(
      valueListenable: selectedCurrencyController,
      builder: (_, selectedCurrency, _) {
        return MyoroInput(
          formatter: MyoroNumberInputFormatter(min: min, max: max, decimalPlaces: decimalPlaces, decimalSeparator: selectedCurrency.decimalSeparator),
          prefix: _Prefix(selectedCurrency),
          onChanged: (t) => onChanged(double.tryParse(t) ?? 0),
        );
      },
    );
  }
}
