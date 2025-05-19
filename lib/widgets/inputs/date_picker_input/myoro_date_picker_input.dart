import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part '_widgets/_input.dart';
part '_widgets/_trigger_area.dart';
part 'myoro_date_picker_input_theme_extension.dart';

/// Date picker input (click date, no typy typy).
class MyoroDatePickerInput extends StatefulWidget {
  /// [MyoroInput] configuration.
  final MyoroInputConfiguration configuration;

  const MyoroDatePickerInput({super.key, required this.configuration});

  @override
  State<MyoroDatePickerInput> createState() => _MyoroDatePickerInputState();
}

final class _MyoroDatePickerInputState extends State<MyoroDatePickerInput> {
  TextEditingController? _localController;
  MyoroInputConfiguration get _configuration {
    return widget.configuration.copyWith(
      controller: widget.configuration.controller ?? (_localController ??= TextEditingController()),
    );
  }

  @override
  void dispose() {
    _localController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: [_Input(_configuration), Positioned(child: _TriggerArea(_configuration))]);
  }
}
