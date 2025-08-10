part of '../myoro_dropdown.dart';

/// [Widget] responsible for opening the dropdown when [_Input] is pressed.
final class _InputTriggerArea<T, C extends _C<T>> extends StatelessWidget {
  // final MyoroDropdownViewModel<T, C> _viewModel;

  const _InputTriggerArea();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroDropdownViewModel<T, C>>();
    final state = viewModel.state;
    final configuration = state.configuration;
    final enabledNotifier = state.enabledNotifier;
    final selectedItemsNotifier = state.selectedItemsNotifier;
    final inputSizeNotifier = state.inputSizeNotifier;

    final inputThemeExtension = context.resolveThemeExtension<MyoroInputThemeExtension>();
    final clearTextButtonPadding = inputThemeExtension.clearTextButtonPadding;

    return ValueListenableBuilder(
      valueListenable: inputSizeNotifier,
      builder: (_, Size? inputSize, _) {
        return SizedBox(
          height: inputSize?.height,
          child: ValueListenableBuilder(
            valueListenable: enabledNotifier,
            builder: (_, bool enabled, _) {
              return ValueListenableBuilder(
                valueListenable: selectedItemsNotifier,
                builder: (_, selectedItems, _) {
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
