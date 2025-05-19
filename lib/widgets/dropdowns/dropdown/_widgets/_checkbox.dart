part of '../myoro_dropdown.dart';

/// [MyoroCheckbox] that enables/disables the dropdown.
final class _Checkbox<T> extends StatelessWidget {
  final MyoroDropdownController<T> _controller;

  const _Checkbox(this._controller);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: _controller.enabledNotifier,
      builder: (_, bool enabled, __) => _builder(enabled),
    );
  }

  Widget _builder(bool enabled) {
    return MyoroCheckbox(
      configuration: MyoroCheckboxConfiguration(
        initialValue: enabled,
        onChanged: (bool enabled) => _controller.toggleEnabled(enabled),
      ),
    );
  }
}
