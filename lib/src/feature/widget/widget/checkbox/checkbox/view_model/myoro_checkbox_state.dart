part of 'myoro_checkbox_view_model.dart';

/// State of [MyoroCheckboxViewModel].
class MyoroCheckboxState {
  /// Creates a new instance of [MyoroCheckboxState].
  MyoroCheckboxState(this.label, bool value, this.enabled, this.onChanged, this.disabledOnTapUp)
    : _valueController = ValueNotifier(value);

  /// [MyoroCheckbox.label].
  String label;

  /// [MyoroCheckbox.enabled].
  bool enabled;

  /// [MyoroCheckbox.onChanged].
  MyoroCheckboxOnChanged? onChanged;

  /// [MyoroCheckbox.disabledOnTapUp].
  MyoroCheckboxDisabledOnTapUp? disabledOnTapUp;

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
