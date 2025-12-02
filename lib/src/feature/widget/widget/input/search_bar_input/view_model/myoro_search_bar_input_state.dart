part of 'myoro_search_bar_input_view_model.dart';

/// State of [MyoroSearchBarInputViewModel].
class MyoroSearchBarInputState {
  /// Default constructor.
  MyoroSearchBarInputState(
    this.inputStyle,
    this.label,
    this.placeholder,
    this.autofocus,
    this.onChanged,
    TextEditingController? controller,
  ) {
    _controller = controller ?? (_localController ??= TextEditingController());
  }

  /// [MyoroInput.inputStyle].
  MyoroInputStyleEnum inputStyle;

  /// [MyoroInput.label].
  String label;

  /// [MyoroInput.placeholder].
  String placeholder;

  /// Autofocus.
  bool autofocus;

  /// On changed.
  ValueChanged<String>? onChanged;

  /// Local [MyoroSearchBarInput.controller].
  TextEditingController? _localController;

  /// [MyoroSearchBarInput.controller].
  late TextEditingController _controller;

  /// Dispose function.
  void dispose() {
    _localController?.dispose();
    _localController = null;
  }

  /// [_controller] getter.
  TextEditingController get controller {
    return _controller;
  }

  /// [_controller] setter.
  set controller(TextEditingController? controller) {
    if (controller == null) {
      _controller = _localController ??= TextEditingController();
    } else {
      _localController?.dispose();
      _localController = null;
      _controller = controller;
    }
  }
}
