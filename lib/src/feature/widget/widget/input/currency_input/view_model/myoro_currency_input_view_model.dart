import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_currency_input_state.dart';

/// View model of [MyoroCurrencyInput].
class MyoroCurrencyInputViewModel {
  /// Default constructor.
  MyoroCurrencyInputViewModel(double min, double? max, int decimalPlaces, MyoroCurrencyEnum currency, MyoroCurrencyInputOnChanged onChanged)
    : _state = MyoroCurrencyInputState(min, max, decimalPlaces, currency, onChanged);

  /// State.
  final MyoroCurrencyInputState _state;

  /// Dispose function.
  void dispose() {
    _state.dispose();
  }

  /// Disables the dropdown.
  void disableDropdown() {
    state.showing = false;
  }

  /// [MyoroDropdown.itemBuilder]
  MyoroMenuItem itemBuilder(MyoroCurrencyEnum currency) {
    return MyoroMenuIconTextButtonItem(textConfiguration: MyoroTextConfiguration(text: currency.longSymbol));
  }

  /// [_state] getter.
  MyoroCurrencyInputState get state {
    return _state;
  }
}
