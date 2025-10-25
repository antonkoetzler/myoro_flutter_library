part of 'myoro_date_picker_input_view_model.dart';

/// State of [MyoroDatePickerInputViewModel].
class MyoroDatePickerInputState {
  /// Default constructor.
  MyoroDatePickerInputState(TextEditingController? inputController)
    : _inputController = inputController ?? TextEditingController();

  /// Local [TextEditingController].
  final TextEditingController _inputController;

  /// Dispose function.
  void dispose() {
    _inputController.dispose();
  }

  /// [_inputController] getter.
  TextEditingController get inputController {
    return _inputController;
  }
}
