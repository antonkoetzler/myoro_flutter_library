part of '../bundle/myoro_selection_dropdown_bundle.dart';

/// [MyoroCheckbox] that enables/disables the dropdown.
final class _Checkbox<T, V extends _ViewModelType<T>> extends StatelessWidget {
  const _Checkbox();

  @override
  Widget build(context) {
    final viewModel = context.read<V>();
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
