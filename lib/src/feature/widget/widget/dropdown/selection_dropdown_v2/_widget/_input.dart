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
    final calculateInputSize = viewModel.calculateInputSize;
    final inputSizeController = state.inputSizeController;

    return MyoroLayoutBuilder(
      builder: (_, _) {
        calculateInputSize();

        return Stack(
          children: [
            AbsorbPointer(
              child: MyoroInput(
                configuration: MyoroInputConfiguration(controller: inputController, inputKey: inputKey),
              ),
            ),
            ValueListenableBuilder(
              valueListenable: inputSizeController,
              builder: (_, inputSize, _) => Positioned(
                width: inputSize?.width,
                height: inputSize?.height,
                child: MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTapUp: (_) => toggleDropdown(),
                    child: Row(
                      children: [
                        Expanded(child: Container(color: Colors.pink.withOpacity(0.2))),
                        Expanded(child: Container(color: Colors.pink.withOpacity(0.2))),
                      ],
                    ), // MyoroColors.transparent),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
