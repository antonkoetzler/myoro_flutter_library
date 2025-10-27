part of 'myoro_checkbox_view_model.dart';

/// State of [MyoroCheckboxViewModel].
class MyoroCheckboxState {
  /// Creates a new instance of [MyoroCheckboxState].
  MyoroCheckboxState(this.label, bool value, this.onChanged) : _valueController = ValueNotifier(value);

  /// [MyoroCheckbox.label].
  final String label;

  /// [MyoroCheckbox.onChanged].
  final MyoroCheckboxOnChanged? onChanged;

  /// [ValueNotifier] controlling if the checkbox is value.
  final ValueNotifier<bool> _valueController;

  /// Dispose function.
  void dispose() {
    valueController.dispose();
  }

  /// [_valueController] getter.
  ValueNotifier<bool> get valueController {
    return _valueController;
  }

  /// [_valueController]'s value getter.
  bool get value {
    return valueController.value;
  }

  /// [_valueController]'s setter.
  set value(bool value) {
    _valueController.value = value;
  }
}
