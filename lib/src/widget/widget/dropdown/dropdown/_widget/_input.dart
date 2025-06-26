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
    final state = viewModel.state;
    final link = state.link;
    final configuration = state.configuration;
    final enabledController = viewModel.controller.enabledController;

    final child = Stack(
      children: [
        // Empty [MyoroLayoutBuilder] to always update [_inputSizeController].
        MyoroLayoutBuilder(
          builder: (_, _) {
            viewModel.supplyInputSizeController();
            return ValueListenableBuilder(
              valueListenable: enabledController,
              builder: (_, bool enabled, _) {
                return configuration.menuTypeEnum.isOverlay
                    ? CompositedTransformTarget(
                      link: link,
                      child: ListenableBuilder(
                        listenable: state.overlayMenuController,
                        builder: (_, _) => _createInputWidget(context),
                      ),
                    )
                    : _createInputWidget(context);
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

  Widget _createInputWidget(BuildContext context) {
    const zeroRadius = Radius.zero;

    final inputThemeExtension = context.resolveThemeExtension<MyoroInputThemeExtension>();
    final outlinedBorder = inputThemeExtension.outlinedBorder;
    final menuActiveInputBorder = outlinedBorder.copyWith(
      borderRadius: outlinedBorder.borderRadius.copyWith(bottomLeft: zeroRadius, bottomRight: zeroRadius),
    );

    final viewModel = context.read<MyoroDropdownViewModel<T, C>>();
    final state = viewModel.state;
    final configuration = state.configuration;
    final menuTypeEnum = configuration.menuTypeEnum;
    final inputKey = state.inputKey;
    final inputController = state.inputController;
    final controller = viewModel.controller;
    final enabled = controller.enabled;

    return MyoroInput(
      key: inputKey,
      configuration: MyoroInputConfiguration(
        textAlign: configuration.selectedItemTextAlign,
        label: configuration.label,
        enabled: enabled,
        readOnly: true,
        showClearTextButton: configuration.allowItemClearing,
        onCleared: viewModel.controller.clear,
        border:
            menuTypeEnum.isOverlay
                ? (viewModel.state.overlayMenuController.isShowing ? menuActiveInputBorder : null)
                : null,
        controller: inputController,
      ),
    );
  }

  Widget _overlayChildBuilder(BuildContext context) {
    final viewModel = context.read<MyoroDropdownViewModel<T, C>>();

    return ValueListenableBuilder(
      valueListenable: viewModel.state.inputSizeController,
      builder: (_, Size? inputSize, _) {
        return Positioned(
          width: inputSize?.width,
          child: CompositedTransformFollower(
            link: viewModel.state.link,
            offset: Offset(0, inputSize?.height ?? 0),
            child: _Menu<T, C>(),
          ),
        );
      },
    );
  }
}
