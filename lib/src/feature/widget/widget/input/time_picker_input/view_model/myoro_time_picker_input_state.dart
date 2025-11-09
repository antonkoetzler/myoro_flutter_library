part of 'myoro_time_picker_input_view_model.dart';

/// State of [MyoroTimePickerInputViewModel].
class MyoroTimePickerInputState {
  /// Default constructor.
  MyoroTimePickerInputState(this.label, this.validation, this.onChanged);

  /// Time controller.
  final _timeController = ValueNotifier<TimeOfDay?>(null);

  /// Controller.
  final _inputController = TextEditingController();

  /// Label.
  final String label;

  /// Validation.
  final MyoroTimePickerInputValidation? validation;

  /// Callback executed when the time changed.
  final MyoroTimePickerInputOnChanged onChanged;

  /// Dispose function.
  void dispose() {
    _inputController.dispose();
  }

  /// [_timeController] getter.
  ValueNotifier<TimeOfDay?> get timeController {
    return _timeController;
  }

  /// Getter of [_timeController]'s value.
  TimeOfDay? get time {
    return _timeController.value;
  }

  /// [_inputController] getter.
  TextEditingController get inputController {
    return _inputController;
  }

  /// [_timeController] setter.
  set time(TimeOfDay? time) {
    _timeController.value = time;
  }
}
