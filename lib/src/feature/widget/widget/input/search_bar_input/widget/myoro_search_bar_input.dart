import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';

part '../_widget/_input.dart';
part '../_widget/_myoro_search_bar_input_state.dart';

/// Basic search bar input.
///
/// Used primarily as a basic search bar in, for example, a listing screen.
class MyoroSearchBarInput extends StatefulWidget {
  /// Default value of [style].
  static const styleDefaultValue = MyoroSearchBarInputStyle();

  /// Default value of [inputStyle].
  static const inputStyleDefaultValue = MyoroInput.inputStyleDefaultValue;

  /// Default value of [label].
  static const labelDefaultValue = MyoroInput.labelDefaultValue;

  /// Default value of [placeholder].
  static const placeholderDefaultValue = MyoroInput.placeholderDefaultValue;

  /// Default constructor.
  const MyoroSearchBarInput({
    super.key,
    this.style = styleDefaultValue,
    this.inputStyle = inputStyleDefaultValue,
    this.label = labelDefaultValue,
    this.placeholder = placeholderDefaultValue,
    this.autofocus = false,
    this.onChanged,
    this.controller,
  });

  /// [MyoroInput.style].
  final MyoroSearchBarInputStyle style;

  /// [MyoroInput.inputStyle].
  final MyoroInputStyleEnum inputStyle;

  /// [MyoroInput.label].
  final String label;

  /// [MyoroInput.placeholder].
  final String placeholder;

  /// Autofocus.
  final bool autofocus;

  /// On changed.
  final ValueChanged<String>? onChanged;

  /// [TextEditingController] of the search bar.
  final TextEditingController? controller;

  /// Create state function.
  @override
  State<MyoroSearchBarInput> createState() {
    return _MyoroSearchBarInputState();
  }
}
