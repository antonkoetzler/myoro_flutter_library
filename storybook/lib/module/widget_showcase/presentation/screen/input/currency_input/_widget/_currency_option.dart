part of '../myoro_currency_input_widget_showcase_screen.dart';

/// Currency selection option for [MyoroCurrencyInputWidgetShowcaseScreen].
final class _CurrencyOption extends StatelessWidget {
  const _CurrencyOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroCurrencyInputWidgetShowcaseScreenViewModel>();
    final state = viewModel.state;

    return ListenableBuilder(
      listenable: state,
      builder: (_, __) {
        return DropdownButton<MyoroCurrencyEnum>(
          value: state.currency,
          onChanged: (currency) {
            if (currency != null) {
              viewModel.setCurrency(currency);
            }
          },
          items:
              MyoroCurrencyEnum.values.map((currency) {
                return DropdownMenuItem<MyoroCurrencyEnum>(
                  value: currency,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [Text(currency.shortSymbol), const SizedBox(width: 8), Text(currency.longSymbol)],
                  ),
                );
              }).toList(),
        );
      },
    );
  }
}
