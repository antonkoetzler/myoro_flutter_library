part of '../myoro_date_picker_input.dart';

/// [MyoroInput] of the [MyoroDatePickerInput].
final class _Input extends StatelessWidget {
  final MyoroInputConfiguration _configuration;

  const _Input(this._configuration);

  @override
  Widget build(BuildContext context) {
    return MyoroInput(configuration: _configuration);
  }
}
