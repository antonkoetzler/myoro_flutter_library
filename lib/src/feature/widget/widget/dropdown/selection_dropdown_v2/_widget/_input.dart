part of '../bundle/myoro_selection_dropdown_bundle_v2.dart';

/// Input for selection dropdowns.
class _Input<T, V extends _ViewModelType<T>> extends StatelessWidget {
  const _Input();

  @override
  Widget build(context) {
    final viewModel = context.read<V>();
    final toggleDropdown = viewModel.toggleDropdown;
    final state = viewModel.state;
    final inputController = state.inputController;
    final dropdownController = state.dropdownController;
    final dropdownControllerConfiguration = dropdownController.configuration;
    final inputKey = dropdownControllerConfiguration.targetKey;

    return MyoroInput(
      configuration: MyoroInputConfiguration(
        controller: inputController,
        inputKey: inputKey,
        onTap: toggleDropdown,
        readOnly: true,
      ),
    );
  }
}
