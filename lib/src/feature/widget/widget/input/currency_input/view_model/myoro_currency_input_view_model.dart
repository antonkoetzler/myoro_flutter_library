import 'package:flutter/foundation.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_currency_input_state.dart';

/// View model of [MyoroCurrencyInput].
class MyoroCurrencyInputViewModel {
  /// Default constructor.
  MyoroCurrencyInputViewModel(MyoroCurrencyEnum currency) : _state = MyoroCurrencyInputState(currency) {
    _state.inputDropdownController.selectedItemController.addListener(_selectedItemControllerListener);
  }

  /// State.
  final MyoroCurrencyInputState _state;

  /// Dispose function.
  void dispose() {
    _state.dispose();
  }

  /// Listener of [MyoroSingleInputDropdownController.selectedItemController].
  void _selectedItemControllerListener() {
    _state.selectedCurrency = _state.inputDropdownController.selectedItem!;
    if (_state.inputDropdownController.showing) _state.inputDropdownController.disableDropdown();
  }

  /// [_state] getter.
  MyoroCurrencyInputState get state {
    return _state;
  }
}
