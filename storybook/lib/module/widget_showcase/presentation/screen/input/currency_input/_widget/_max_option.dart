part of '../myoro_currency_input_widget_showcase_screen.dart';

/// [MyoroCurrencyInputConfiguration.max] option of [MyoroCurrencyInputWidgetShowcaseScreen].
final class _MaxOption extends StatelessWidget {
  const _MaxOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroCurrencyInputWidgetShowcaseScreenViewModel>();

    return MyoroInput(
      label: 'Max Value (optional)',
      onChanged: (text) {
        if (text.isEmpty) {
          viewModel.state.max = null;
        } else {
          final value = double.tryParse(text);
          if (value != null) {
            viewModel.state.max = value;
          }
        }
      },
    );
  }
}
