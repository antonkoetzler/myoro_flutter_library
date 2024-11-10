import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

// TODO: Finish this input function with the suggestions

/// Function that is executed when the input is changed to show a list of recommendations.
typedef MyoroInputSuggestionRequest = List<String> Function(String text);

/// Function executed when a [Form] is triggered.
typedef MyoroInputValidation = String? Function(String text);

/// Function executed when the input changed.
typedef MyoroInputOnChanged = Function(String text);

/// Input widget.
final class MyoroInput extends StatefulWidget {
  /// Type of input.
  final MyoroInputTypeEnum inputType;

  /// Search suggestions/recommendations function that is executed when the input is changed.
  final MyoroInputSuggestionRequest? suggestionRequest;

  /// Function executed when [GlobalKey<FormState>().currentState!.validate()] is called.
  ///
  /// Aka, called when a [MyoroFormController.finish] is executed.
  final MyoroInputValidation? validation;

  /// Function executed when the input is changed.
  final MyoroInputOnChanged? onChanged;

  /// Controller of the input.
  final TextEditingController? controller;

  const MyoroInput({
    super.key,
    required this.inputType,
    this.suggestionRequest,
    this.validation,
    this.onChanged,
    this.controller,
  });

  @override
  State<MyoroInput> createState() => _MyoroInputState();
}

final class _MyoroInputState extends State<MyoroInput> {
  MyoroInputTypeEnum get _inputType => widget.inputType;
  MyoroInputSuggestionRequest? get _suggestionRequest => widget.suggestionRequest;
  MyoroInputValidation? get _validation => widget.validation;
  MyoroInputOnChanged? get _onChanged => widget.onChanged;

  TextEditingController? _localController;
  TextEditingController get _controller {
    return widget.controller ?? (_localController ??= TextEditingController());
  }

  @override
  Widget build(BuildContext context) {
    // TODO: Search suggestions.
    return TextFormField(
      decoration: InputDecoration(border: _inputType.getBorder(context)),
      validator: (_) => _validation?.call(_controller.text),
      onChanged: _onChanged,
      controller: _controller,
    );
  }
}
