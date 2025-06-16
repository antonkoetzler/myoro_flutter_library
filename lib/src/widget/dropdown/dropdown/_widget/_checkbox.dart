part of '../myoro_dropdown.dart';

/// [MyoroCheckbox] that enables/disables the dropdown.
final class _Checkbox<T, C extends _C<T>> extends StatelessWidget {
  const _Checkbox();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroDropdownViewModel<T, C>>();

    return ValueListenableBuilder(
      valueListenable: viewModel.controller.enabledController,
      builder: (_, bool enabled, _) {
        return MyoroCheckbox(
          configuration: MyoroCheckboxConfiguration(
            value: enabled,
            onChanged: (bool enabled) => viewModel.controller.toggleEnabled(enabled),
          ),
        );
      },
    );
  }
}
