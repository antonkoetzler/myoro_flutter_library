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
    final calculateInputAndInputClearTextButtonSize = viewModel.calculateInputAndInputClearTextButtonSize;
    final inputAndInputClearTextButtonSizeController = state.inputAndInputClearTextButtonSizeController;
    final inputClearTextButtonKey = state.inputClearTextButtonKey;

    // [ValueListenableBuilder] and [MyoroLayoutBuilder] to calculate the size of the input when the
    // window is resized OR if the input controller changes, thus the clear text button is shown.
    return ValueListenableBuilder(
      valueListenable: inputController,
      builder: (_, _, _) => MyoroLayoutBuilder(
        builder: (_, _) {
          calculateInputAndInputClearTextButtonSize();

          return Stack(
            children: [
              AbsorbPointer(
                child: MyoroInput(
                  configuration: MyoroInputConfiguration(
                    controller: inputController,
                    inputKey: inputKey,
                    clearTextButtonKey: inputClearTextButtonKey,
                  ),
                ),
              ),
              ValueListenableBuilder(
                valueListenable: inputAndInputClearTextButtonSizeController,
                builder: (_, sizes, _) => Positioned(
                  width: sizes?.$1.width,
                  height: sizes?.$1.height,
                  child: MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: GestureDetector(
                      onTapUp: (_) => toggleDropdown(),
                      child: Row(
                        children: [
                          YOU ARE HERE
                          Expanded(child: Container(color: Colors.pink.withOpacity(0.2))),
                          Container(
                            width: sizes?.$2?.width,
                            height: sizes?.$2?.height,
                            color: Colors.orange.withOpacity(0.3),
                          ),
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
      ),
    );
  }
}
