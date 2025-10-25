/// Enum to enumerate all the provided currencies in MFL.
enum MyoroCurrencyEnum {
  /// US Dollar.
  usd('USD', '\$', '.', 'US Dollar'),

  /// Canadian Dollar.
  cad('CAD', 'C\$', '.', 'Canadian Dollar'),

  /// Brazilian Real.
  brl('BRL', 'R\$', ',', 'Brazilian Real'),

  /// Bitcoin.
  btc('BTC', '₿', '.', 'Bitcoin');

  /// Default constructor.
  const MyoroCurrencyEnum(this.longSymbol, this.shortSymbol, this.decimalSeparator, this.formalName);

  /// Symbol of the currency.
  final String longSymbol;

  /// Display symbol of the currency.
  final String shortSymbol;

  /// Decimal separator character for this currency.
  /// '.' for most currencies, ',' for European/Brazilian formatting.
  final String decimalSeparator;

  /// Formal name of the currency.
  final String formalName;
}
