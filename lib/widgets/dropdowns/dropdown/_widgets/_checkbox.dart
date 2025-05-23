part of '../myoro_dropdown.dart';

/// [MyoroCheckbox] that enables/disables the dropdown.
final class _Checkbox<T, C extends MyoroDropdownConfiguration<T>> extends StatelessWidget {
  final MyoroDropdownController<T, C> _controller;

  const _Checkbox(this._controller);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: _controller.state.enabledController,
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
