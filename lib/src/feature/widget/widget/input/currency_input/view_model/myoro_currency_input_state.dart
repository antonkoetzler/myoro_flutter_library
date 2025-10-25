part of 'myoro_currency_input_view_model.dart';

/// State of [MyoroCurrencyInputViewModel].
class MyoroCurrencyInputState {
  /// Default constructor.
  MyoroCurrencyInputState(MyoroCurrencyEnum currency)
    : _selectedCurrencyController = ValueNotifier(currency),
      _inputDropdownController = MyoroSingleInputDropdownController(
        configuration: MyoroSingleInputDropdownConfiguration(
          menuConfiguration: MyoroSingleMenuConfiguration(
            allowDeselection: false,
            selectedItem: currency,
            request: MyoroCurrencyEnum.values.toSet,
            itemBuilder: (i) =>
                MyoroMenuIconTextButtonItem(textConfiguration: MyoroTextConfiguration(text: i.formalName)),
          ),
          selectedItemBuilder: (i) => i.formalName,
        ),
      );

  /// [ValueNotifier] of the selected [MyoroCurrencyEnum].
  final ValueNotifier<MyoroCurrencyEnum> _selectedCurrencyController;

  /// Dropdown inputDropdownController.
  final MyoroSingleInputDropdownController<MyoroCurrencyEnum> _inputDropdownController;

  /// Dispose function.
  void dispose() {
    _selectedCurrencyController.dispose();
    _inputDropdownController.dispose();
  }

  /// [_selectedCurrencyController] getter.
  ValueNotifier<MyoroCurrencyEnum> get selectedCurrencyController {
    return _selectedCurrencyController;
  }

  /// [_inputDropdownController] getter.
  MyoroSingleInputDropdownController<MyoroCurrencyEnum> get inputDropdownController {
    return _inputDropdownController;
  }

  /// [_selectedCurrencyController] setter.
  set selectedCurrency(MyoroCurrencyEnum value) {
    _selectedCurrencyController.value = value;
  }
}
