part of '../myoro_dropdown.dart';

/// [MyoroCheckbox] that enables/disables the dropdown.
final class _Checkbox<T, C extends _C<T>> extends StatelessWidget {
  const _Checkbox();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroDropdownViewModel<T, C>>();
    final state = viewModel.state;
    final enabledNotifier = state.enabledNotifier;
    final toggleEnabled = viewModel.toggleEnabled;

    return ValueListenableBuilder(
      valueListenable: enabledNotifier,
      builder: (_, bool enabled, _) => MyoroCheckbox(
        configuration: MyoroCheckboxConfiguration(value: enabled, onChanged: toggleEnabled),
      ),
    );
  }
}
