part of '../myoro_dropdown.dart';

/// [MyoroInput] that displays selected items and provides functionality such as the clear selected items button.
final class _Input<T, C extends _C<T>> extends StatefulWidget {
  const _Input();

  @override
  State<_Input<T, C>> createState() => _InputState<T, C>();
}

final class _InputState<T, C extends _C<T>> extends State<_Input<T, C>> {
  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroDropdownViewModel<T, C>>();
    final link = viewModel.state.link;
    final inputKey = viewModel.state.inputKey;
    final configuration = viewModel.state.configuration;
    final enabledController = viewModel.controller.enabledController;
    final inputController = viewModel.state.inputController;

    final child = Stack(
      children: [
        // Empty [MyoroLayoutBuilder] to always update [_inputSizeController].
        MyoroLayoutBuilder(
          builder: (_, _) {
            viewModel.supplyInputSizeController();
            return ValueListenableBuilder(
              valueListenable: enabledController,
              builder: (_, bool enabled, _) {
                return CompositedTransformTarget(
                  link: link,
                  child: MyoroInput(
                    key: inputKey,
                    configuration: MyoroInputConfiguration(
                      textAlign: configuration.selectedItemTextAlign,
                      label: configuration.label,
                      enabled: enabled,
                      readOnly: true,
                      showClearTextButton: configuration.allowItemClearing,
                      onCleared: viewModel.controller.clear,
                      controller: inputController,
                    ),
                  ),
                );
              },
            );
          },
        ),
        _InputTriggerArea<T, C>(),
      ],
    );

    return switch (viewModel.state.configuration.menuTypeEnum) {
      MyoroDropdownMenuTypeEnum.overlay => OverlayPortal(
        controller: viewModel.state.overlayMenuController,
        overlayChildBuilder: _overlayChildBuilder,
        child: child,
      ),
      MyoroDropdownMenuTypeEnum.expanding => child,
      MyoroDropdownMenuTypeEnum.modal => child,
    };
  }

  Widget _overlayChildBuilder(BuildContext context) {
    final viewModel = context.read<MyoroDropdownViewModel<T, C>>();
    final inputSizeController = viewModel.state.inputSizeController;
    final link = viewModel.state.link;
    final themeExtension = context.resolveThemeExtension<MyoroDropdownThemeExtension>();

    return ValueListenableBuilder(
      valueListenable: inputSizeController,
      builder: (_, Size? inputSize, _) {
        return Positioned(
          width: inputSize?.width,
          child: CompositedTransformFollower(
            link: link,
            offset: Offset(0, (inputSize?.height ?? 0) + themeExtension.spacing),
            child: _Menu<T, C>(),
          ),
        );
      },
    );
  }
}
