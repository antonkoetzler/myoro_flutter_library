import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Function executed when a [Form] is triggered.
typedef MyoroInputValidation = String? Function(String text);

/// Function executed when the input changed.
typedef MyoroInputOnChanged = Function(String text);

/// Input with underline and outline styles.
final class MyoroInput extends StatefulWidget {
  /// Type of input.
  final MyoroInputTypeEnum inputType;

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
    this.validation,
    this.onChanged,
    this.controller,
  });

  @override
  State<MyoroInput> createState() => _MyoroInputState();
}

final class _MyoroInputState extends State<MyoroInput> {
  MyoroInputTypeEnum get _inputType => widget.inputType;
  MyoroInputValidation? get _validation => widget.validation;
  MyoroInputOnChanged? get _onChanged => widget.onChanged;

  TextEditingController? _localController;
  TextEditingController get _controller {
    return widget.controller ?? (_localController ??= TextEditingController());
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(border: _inputType.getBorder(context)),
      validator: (_) => _validation?.call(_controller.text),
      onChanged: _onChanged,
      controller: _controller,
    );
  }
}
