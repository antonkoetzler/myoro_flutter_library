part of 'myoro_time_picker_input_view_model.dart';

/// State of [MyoroTimePickerInputViewModel].
class MyoroTimePickerInputState {
  /// Default constructor.
  MyoroTimePickerInputState(this.label, this.onChanged);

  /// Controller.
  final _inputController = TextEditingController();

  /// Label.
  final String label;

  /// Callback executed when the time changed.
  final MyoroTimePickerInputOnChanged onChanged;

  /// Dispose function.
  void dispose() {
    _inputController.dispose();
  }

  /// [_inputController] getter.
  TextEditingController get inputController {
    return _inputController;
  }
}
