part of '../myoro_dropdown.dart';

/// [MyoroCheckbox] that enables/disables the dropdown.
final class _Checkbox<T, C extends _C<T>> extends StatelessWidget {
  final MyoroDropdownViewModel<T, C> _viewModel;

  const _Checkbox(this._viewModel);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: _viewModel.controller.state.enabledController,
      builder: (_, bool enabled, __) => _builder(enabled),
    );
  }

  Widget _builder(bool enabled) {
    return MyoroCheckbox(
      configuration: MyoroCheckboxConfiguration(
        value: enabled,
        onChanged: (bool enabled) => _viewModel.controller.toggleEnabled(enabled),
      ),
    );
  }
}
