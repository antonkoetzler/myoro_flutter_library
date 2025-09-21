part of '../bundle/myoro_dropdown_bundle.dart';

/// [Widget] responsible for opening the dropdown when [_Input] is pressed.
final class _InputTriggerArea<T, V extends _ViewModelType<T>> extends StatelessWidget {
  const _InputTriggerArea();

  @override
  Widget build(context) {
    final viewModel = context.read<V>();
    final state = viewModel.state;
    final configuration = state.configuration;
    final enabledNotifier = state.enabledNotifier;
    final inputSizeNotifier = state.inputSizeNotifier;

    final inputThemeExtension = MyoroInputThemeExtension.builder(
      context.colorScheme,
      context.textTheme,
    );
    final clearTextButtonPadding = inputThemeExtension.clearTextButtonPadding;

    return ValueListenableBuilder(
      valueListenable: inputSizeNotifier,
      builder: (_, Size? inputSize, _) {
        return SizedBox(
          height: inputSize?.height,
          child: ValueListenableBuilder(
            valueListenable: enabledNotifier,
            builder: (_, bool enabled, _) {
              return Row(
                children: [
                  Expanded(child: _InputTriggerAreaRegion<T, V>(enabled)),
                  // Allows [MyoroInput._ClearTextButton] to be pressed.
                  if (configuration.allowItemClearing) ...[
                    SizedBox(
                      width: 29,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          _InputTriggerAreaRegion<T, V>(
                            enabled,
                            height: (clearTextButtonPadding?.top ?? 0) + 2,
                          ),
                          _InputTriggerAreaRegion<T, V>(
                            enabled,
                            height: (clearTextButtonPadding?.bottom ?? 0) + 2,
                          ),
                        ],
                      ),
                    ),
                    _InputTriggerAreaRegion<T, V>(
                      enabled,
                      width: clearTextButtonPadding?.right ?? 0,
                    ),
                  ],
                ],
              );
            },
          ),
        );
      },
    );
  }
}
