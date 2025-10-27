import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_currency_input_state.dart';

/// View model of [MyoroCurrencyInput].
class MyoroCurrencyInputViewModel {
  /// Default constructor.
  MyoroCurrencyInputViewModel(MyoroCurrencyEnum currency) : _state = MyoroCurrencyInputState(currency);

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
