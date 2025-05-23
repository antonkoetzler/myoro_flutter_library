part of '../myoro_input.dart';

/// Checkbox option when [MyoroInputConfiguration.checkboxOnChanged] is provided.
final class _Checkbox extends StatelessWidget {
  final MyoroInputController _controller;

  const _Checkbox(this._controller);

  @override
  Widget build(BuildContext context) {
    final enabled = _controller.enabled;

    return MyoroCheckbox(
      configuration: MyoroCheckboxConfiguration(initialValue: enabled, onChanged: _controller.checkboxOnChanged),
    );
  }
}
