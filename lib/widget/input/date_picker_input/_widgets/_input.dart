part of '../myoro_date_picker_input.dart';

/// [MyoroInput] of the [MyoroDatePickerInput].
final class _Input extends StatelessWidget {
  final MyoroDatePickerInputController _controller;

  const _Input(this._controller);

  @override
  Widget build(BuildContext context) {
    return MyoroInput(configuration: _controller.configuration);
  }
}
