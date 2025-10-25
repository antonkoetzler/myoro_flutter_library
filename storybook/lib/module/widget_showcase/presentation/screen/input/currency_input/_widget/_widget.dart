part of '../myoro_currency_input_widget_showcase_screen.dart';

/// [WidgetShowcaseScreenConfiguration.widget] of [MyoroCurrencyInputWidgetShowcaseScreen].
final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroCurrencyInputWidgetShowcaseScreenViewModel>();
    final state = viewModel.state;
    final formController = state.formController;

    return ListenableBuilder(
      listenable: viewModel.state,
      builder: (_, __) {
        return MyoroForm(
          controller: formController,
          builder: (_, formController) {
            return MyoroCurrencyInput(
              currency: state.currency,
              min: state.min,
              max: state.max,
              decimalPlaces: state.decimalPlaces,
            );
          },
        );
      },
    );
  }
}
