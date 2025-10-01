part of '../bundle/myoro_selection_dropdown_bundle_v2.dart';

/// Input for selection dropdowns.
class _Input<T, V extends _ViewModelType<T>> extends StatelessWidget {
  const _Input();

  @override
  Widget build(context) {
    final viewModel = context.read<V>();
    final toggleDropdown = viewModel.toggleDropdown;
    final state = viewModel.state;
    final dropdownController = state.dropdownController;
    final inputKey = dropdownController.configuration.targetKey;
    final inputController = state.inputController;

    return Stack(
      children: [
        AbsorbPointer(
          child: MyoroInput(
            key: inputKey,
            configuration: MyoroInputConfiguration(controller: inputController),
          ),
        ),
        Positioned.fill(
          child: MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              onTapUp: (_) => toggleDropdown(),
              child: Container(color: MyoroColors.transparent),
            ),
          ),
        ),
      ],
    );
  }
}
