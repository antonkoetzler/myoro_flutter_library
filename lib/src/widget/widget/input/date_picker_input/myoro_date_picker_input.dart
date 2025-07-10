import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part '_widget/_date_picker.dart';
part '_widget/_input.dart';
part '_widget/_trigger_area.dart';

/// Date picker input (click date, no typy typy).
class MyoroDatePickerInput extends MyoroStatefulWidget {
  /// [MyoroInput] configuration.
  final MyoroInputConfiguration configuration;

  const MyoroDatePickerInput({super.key, required this.configuration});

  @override
  State<MyoroDatePickerInput> createState() => _MyoroDatePickerInputState();
}

final class _MyoroDatePickerInputState extends State<MyoroDatePickerInput> {
  late final _controller = MyoroDatePickerInputController(configuration: widget.configuration);

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: [_Input(_controller), Positioned(child: _TriggerArea(_controller))]);
  }
}
