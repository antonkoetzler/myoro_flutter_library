part of '../myoro_currency_input.dart';

/// Prefix [Widget] of [MyoroCurrencyInput].
final class _Prefix extends StatelessWidget {
  const _Prefix();

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroCurrencyInputThemeExtension>();
    final style = context.watch<MyoroCurrencyInputStyle>();
    final currencySymbolTextStyle = style.currencySymbolTextStyle ?? themeExtension.currencySymbolTextStyle;
    final currencySymbolButtonStyle =
        style.currencySymbolButtonStyle ?? themeExtension.currencySymbolButtonStyle ?? const MyoroIconTextButtonStyle();
    final currencyPrefixPadding =
        style.currencyPrefixPadding ??
        themeExtension.currencyPrefixPadding ??
        const EdgeInsets.only(
          top: kMyoroBorderWidth,
          bottom: kMyoroBorderWidth,
          left: kMyoroBorderWidth,
          right: kMyoroMultiplier,
        );

    final viewModel = context.read<MyoroCurrencyInputViewModel>();
    final state = viewModel.state;
    final inputDropdownController = state.inputDropdownController;
    final selectedCurrencyController = state.selectedCurrencyController;

    return ValueListenableBuilder(
      valueListenable: selectedCurrencyController,
      builder: (_, selectedCurrency, _) {
        return Padding(
          padding: currencyPrefixPadding,
          child: IntrinsicWidth(
            child: MyoroIconTextButton(
              style: currencySymbolButtonStyle,
              textConfiguration: MyoroTextConfiguration(
                text: selectedCurrency.longSymbol,
                style: currencySymbolTextStyle,
              ),
              onTapUp: (_) => inputDropdownController.toggleDropdown(),
            ),
          ),
        );
      },
    );
  }
}
