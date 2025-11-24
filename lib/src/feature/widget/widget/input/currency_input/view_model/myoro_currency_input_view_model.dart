import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_currency_input_state.dart';

/// View model of [MyoroCurrencyInput].
class MyoroCurrencyInputViewModel {
  /// Default constructor.
  MyoroCurrencyInputViewModel(
    double min,
    double? max,
    int decimalPlaces,
    MyoroCurrencyEnum currency,
    bool canChangeCurrency,
    bool autofocus,
    MyoroCurrencyInputOnChanged onChanged,
    FocusNode? focusNode,
    TextEditingController? controller,
    MyoroCurrencyInputOnFieldSubmitted? onFieldSubmitted,
  ) : _state = MyoroCurrencyInputState(
        min,
        max,
        decimalPlaces,
        currency,
        canChangeCurrency,
        autofocus,
        onChanged,
        focusNode,
        controller,
        onFieldSubmitted,
      );

  /// State.
  final MyoroCurrencyInputState _state;

  /// Dispose function.
  void dispose() {
    _state.dispose();
  }

  /// Toggles the dropdown.
  void toggleDropdown() {
    state.showing = !state.showing;
  }

  /// [MyoroDropdown.itemBuilder]
  MyoroMenuItem itemBuilder(_, MyoroCurrencyEnum currency) {
    return MyoroMenuIconTextButtonItem(
      text: currency.longSymbol,
      onTapUp: (_, _) {
        state
          ..selectedCurrency = currency
          ..showing = false;
      },
    );
  }

  /// [_state] getter.
  MyoroCurrencyInputState get state {
    return _state;
  }
}
