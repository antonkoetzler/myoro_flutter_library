import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';

part '../_widget/_input.dart';

/// Basic search bar input.
///
/// Used primarily as a basic search bar in, for example, a listing screen.
class MyoroSearchBarInput extends StatelessWidget {
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
    required this.controller,
  });

  /// [MyoroInput.style].
  final MyoroSearchBarInputStyle style;

  /// [MyoroInput.inputStyle].
  final MyoroInputStyleEnum inputStyle;

  /// [MyoroInput.label].
  final String label;

  /// [MyoroInput.placeholder].
  final String placeholder;

  /// [TextEditingController] of the search bar.
  final TextEditingController controller;

  /// Build function.
  @override
  Widget build(_) {
    return MultiProvider(
      providers: [
        Provider.value(value: style),
        Provider(create: (_) => MyoroSearchBarInputViewModel(inputStyle, label, placeholder, controller)),
      ],
      child: const _Input(),
    );
  }
}
