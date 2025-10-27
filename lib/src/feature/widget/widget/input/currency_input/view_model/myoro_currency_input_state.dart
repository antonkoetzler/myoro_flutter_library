part of 'myoro_currency_input_view_model.dart';

/// State of [MyoroCurrencyInputViewModel].
class MyoroCurrencyInputState {
  /// Default constructor.
  MyoroCurrencyInputState(MyoroCurrencyEnum currency) : _selectedCurrencyController = ValueNotifier(currency);

  /// [ValueNotifier] of the selected [MyoroCurrencyEnum].
  final ValueNotifier<MyoroCurrencyEnum> _selectedCurrencyController;

  /// [MyoroDropdown.showingController]
  final _showingController = ValueNotifier(false);

  /// [TextEditingController] of the input.
  final _inputController = TextEditingController();

  /// Dispose function.
  void dispose() {
    _selectedCurrencyController.dispose();
    _showingController.dispose();
    _inputController.dispose();
  }

  /// [_selectedCurrencyController] getter.
  ValueNotifier<MyoroCurrencyEnum> get selectedCurrencyController {
    return _selectedCurrencyController;
  }

  /// Getter of [_selectedCurrencyController]'s value.
  MyoroCurrencyEnum get selectedCurrency {
    return _selectedCurrencyController.value;
  }

  /// [_showingController] getter.
  ValueNotifier<bool> get showingController {
    return _showingController;
  }

  /// Getter of [_showingController]'s value.
  bool get showing {
    return _showingController.value;
  }

  /// [_inputController] getter.
  TextEditingController get inputController {
    return _inputController;
  }

  /// [_selectedCurrencyController] setter.
  set selectedCurrency(MyoroCurrencyEnum value) {
    _selectedCurrencyController.value = value;
  }

  /// [_showingController] setter.
  set showing(bool value) {
    _showingController.value = value;
  }
}
