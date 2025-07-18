part of 'myoro_date_picker_view_model.dart';

/// State of [MyoroDatePickerInputViewModel].
class MyoroDatePickerInputState {
  MyoroDatePickerInputState(this._configuration);

  /// Configuration.
  final MyoroDatePickerInputConfiguration _configuration;
  MyoroDatePickerInputConfiguration get configuration => _configuration;

  /// Controller.
  TextEditingController? _localInputController;
  TextEditingController get inputController {
    return _configuration.controller ?? (_localInputController ??= TextEditingController());
  }

  /// [GlobalKey] of the [MyoroInput].
  ///
  /// Used to get the dimensions of the [MyoroInput] for the [MyoroDatePickerInput]'s date picker trigger area.
  final _inputKey = GlobalKey();
  GlobalKey get inputKey => _inputKey;

  /// [ValueNotifier]s of the [MyoroInput]'s size to get it's dimensions.
  final _inputSizeController = ValueNotifier<Size?>(null);
  ValueNotifier<Size?> get inputSizeController => _inputSizeController;

  /// Dispose function.
  void dispose() {
    _localInputController?.dispose();
    _inputSizeController.dispose();
  }
}
