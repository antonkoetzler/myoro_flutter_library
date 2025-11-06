import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';

part '_widget/_prefix.dart';
part '_widget/_input.dart';
part '_widget/_myoro_currency_input_state.dart';

/// Currency [MyoroInput].
class MyoroCurrencyInput extends StatefulWidget {
  /// Default value for [style].
  static const styleDefaultValue = MyoroCurrencyInputStyle();

  /// Default value for [currency].
  static const currencyDefaultValue = MyoroCurrencyEnum.usd;

  /// Default value for [min].
  static const minDefaultValue = 0.0;

  /// Default value for [decimalPlaces].
  static const decimalPlacesDefaultValue = 0;

  /// Default constructor.
  const MyoroCurrencyInput({
    super.key,
    this.style = styleDefaultValue,
    this.currency = currencyDefaultValue,
    this.min = minDefaultValue,
    this.max,
    this.decimalPlaces = decimalPlacesDefaultValue,
    required this.onChanged,
  });

  /// Style.
  final MyoroCurrencyInputStyle style;

  /// Currency.
  final MyoroCurrencyEnum currency;

  /// Min value.
  final double min;

  /// Max value.
  final double? max;

  /// Decimal places.
  final int decimalPlaces;

  /// On changed.
  final MyoroCurrencyInputOnChanged onChanged;

  @override
  State<MyoroCurrencyInput> createState() => _MyoroCurrencyInputState();
}
