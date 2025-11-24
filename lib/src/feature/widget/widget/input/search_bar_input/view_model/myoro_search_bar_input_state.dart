part of 'myoro_search_bar_input_view_model.dart';

/// State of [MyoroSearchBarInputViewModel].
class MyoroSearchBarInputState {
  /// Default constructor.
  MyoroSearchBarInputState(this.inputStyle, this.label, this.placeholder, this.controller);

  /// [MyoroInput.inputStyle].
  final MyoroInputStyleEnum inputStyle;

  /// [MyoroInput.label].
  final String label;

  /// [MyoroInput.placeholder].
  final String placeholder;

  /// [MyoroSearchBarInput.controller].
  final TextEditingController controller;
}
