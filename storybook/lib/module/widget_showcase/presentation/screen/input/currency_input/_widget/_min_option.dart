part of '../myoro_currency_input_widget_showcase_screen.dart';

/// [MyoroCurrencyInputConfiguration.min] option of [MyoroCurrencyInputWidgetShowcaseScreen].
final class _MinOption extends StatelessWidget {
  const _MinOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroCurrencyInputWidgetShowcaseScreenViewModel>();

    return MyoroInput(
      label: 'Min Value',
      onChanged: (text) {
        final value = double.tryParse(text);
        if (value != null) {
          viewModel.state.min = value;
        }
      },
    );
  }
}
