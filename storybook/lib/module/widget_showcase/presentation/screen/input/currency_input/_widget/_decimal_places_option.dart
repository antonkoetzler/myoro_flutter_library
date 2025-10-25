part of '../myoro_currency_input_widget_showcase_screen.dart';

/// [MyoroCurrencyInputConfiguration.decimalPlaces] option of [MyoroCurrencyInputWidgetShowcaseScreen].
final class _DecimalPlacesOption extends StatelessWidget {
  const _DecimalPlacesOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroCurrencyInputWidgetShowcaseScreenViewModel>();

    return MyoroInput(
      label: 'Decimal Places',
      onChanged: (text) {
        final value = int.tryParse(text);
        if (value != null && value >= 0) {
          viewModel.state.decimalPlaces = value;
        }
      },
    );
  }
}
