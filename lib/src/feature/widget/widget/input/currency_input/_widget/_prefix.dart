part of '../myoro_currency_input.dart';

/// Prefix [Widget] of [MyoroCurrencyInput].
final class _Prefix extends StatelessWidget {
  /// Default constructor.
  const _Prefix(this._selectedCurrency);

  /// Selected currency.
  final MyoroCurrencyEnum _selectedCurrency;

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
    final disableDropdown = viewModel.disableDropdown;

    return Padding(
      padding: currencyPrefixPadding,
      child: IntrinsicWidth(
        child: MyoroIconTextButton(
          style: currencySymbolButtonStyle,
          textConfiguration: MyoroTextConfiguration(text: _selectedCurrency.longSymbol, style: currencySymbolTextStyle),
          onTapUp: (_) => disableDropdown(),
        ),
      ),
    );
  }
}
