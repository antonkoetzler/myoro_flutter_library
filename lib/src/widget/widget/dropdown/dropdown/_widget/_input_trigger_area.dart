part of '../myoro_dropdown.dart';

/// [Widget] responsible for opening the dropdown when [_Input] is pressed.
final class _InputTriggerArea<T, C extends _C<T>> extends StatelessWidget {
  // final MyoroDropdownViewModel<T, C> _viewModel;

  const _InputTriggerArea();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroDropdownViewModel<T, C>>();
    final configuration = viewModel.state.configuration;
    final enabledController = viewModel.controller.enabledController;
    final selectedItemsController = viewModel.controller.selectedItemsController;
    final selectedItems = selectedItemsController.value;
    final inputSizeController = viewModel.state.inputSizeController;

    final inputThemeExtension = context.resolveThemeExtension<MyoroInputThemeExtension>();
    final clearTextButtonPadding = inputThemeExtension.clearTextButtonPadding;

    return ValueListenableBuilder(
      valueListenable: inputSizeController,
      builder: (_, Size? inputSize, _) {
        return SizedBox(
          height: inputSize?.height,
          child: ValueListenableBuilder(
            valueListenable: enabledController,
            builder: (_, bool enabled, _) {
              return ValueListenableBuilder(
                valueListenable: selectedItemsController,
                builder: (_, _, _) {
                  return Row(
                    children: [
                      Expanded(child: _InputTriggerAreaRegion<T, C>(enabled)),
                      // Allows [MyoroInput._ClearTextButton] to be pressed.
                      if (configuration.allowItemClearing && selectedItems.isNotEmpty) ...[
                        SizedBox(
                          width: 29,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              _InputTriggerAreaRegion<T, C>(enabled, height: clearTextButtonPadding.top + 2),
                              _InputTriggerAreaRegion<T, C>(enabled, height: clearTextButtonPadding.bottom + 2),
                            ],
                          ),
                        ),
                        _InputTriggerAreaRegion<T, C>(enabled, width: clearTextButtonPadding.right),
                      ],
                    ],
                  );
                },
              );
            },
          ),
        );
      },
    );
  }
}
