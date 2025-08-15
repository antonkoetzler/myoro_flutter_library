part of '../bundle/myoro_dropdown_bundle.dart';

/// [MyoroInput] that displays selected items and provides functionality such as the clear selected items button.
final class _Input<T, C extends _C<T>> extends StatefulWidget {
  const _Input();

  @override
  State<_Input<T, C>> createState() => _InputState<T, C>();
}

final class _InputState<T, C extends _C<T>> extends State<_Input<T, C>> {
  @override
  Widget build(context) {
    final viewModel = context.read<MyoroDropdownViewModel<T, C>>();
    final state = viewModel.state;
    final link = state.link;
    final configuration = state.configuration;
    final enabledNotifier = state.enabledNotifier;
    final showingMenuNotifier = state.showingMenuNotifier;

    final child = Stack(
      children: [
        // Empty [MyoroLayoutBuilder] to always update [_inputSizeNotifier].
        MyoroLayoutBuilder(
          builder: (_, _) {
            viewModel.supplyInputSizeController();
            return ValueListenableBuilder(
              valueListenable: enabledNotifier,
              builder: (_, bool enabled, _) {
                return ValueListenableBuilder(
                  valueListenable: showingMenuNotifier,
                  builder: (_, bool showingMenu, _) {
                    return configuration.menuTypeEnum.isOverlay
                        ? CompositedTransformTarget(
                            link: link,
                            child: _createInputWidget(context, enabled, showingMenu),
                          )
                        : _createInputWidget(context, enabled, showingMenu);
                  },
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

  Widget _createInputWidget(BuildContext context, bool enabled, bool showingMenu) {
    final themeExtension = context.resolveThemeExtension<MyoroInputThemeExtension>();
    final outlinedBorder = themeExtension.outlinedBorder;
    final menuActiveInputBorderRadius = outlinedBorder.copyWith(
      borderRadius: outlinedBorder.borderRadius.copyWith(bottomLeft: Radius.zero, bottomRight: Radius.zero),
    );

    final viewModel = context.read<MyoroDropdownViewModel<T, C>>();
    final state = viewModel.state;
    final configuration = state.configuration;
    final menuTypeEnum = configuration.menuTypeEnum;
    final inputKey = state.inputKey;
    final inputController = state.inputController;
    final selectedItemTextAlign = configuration.selectedItemTextAlign;
    final label = configuration.label;
    final allowItemClearing = configuration.allowItemClearing;
    final clear = viewModel.clear;

    final inputConfiguration = MyoroInputConfiguration(
      textAlign: selectedItemTextAlign,
      label: label,
      enabled: enabled,
      readOnly: true,
      showClearTextButton: allowItemClearing,
      onCleared: clear,
      border: switch (menuTypeEnum) {
        MyoroDropdownMenuTypeEnum.overlay => showingMenu ? menuActiveInputBorderRadius : null,
        MyoroDropdownMenuTypeEnum.expanding => showingMenu ? menuActiveInputBorderRadius : null,
        MyoroDropdownMenuTypeEnum.modal => null,
      },
      controller: inputController,
    );

    return MyoroInput(
      key: inputKey,
      // This copyWith is to disable the [BoxBorder] lerp animation when we need to alter the bottom corners of
      // this [MyoroInput] when the dropdown is opened when menuTypeEnum is [MyoroDropdownMenuTypeEnum.expanding].
      configuration: inputConfiguration.copyWith(inputKey: ValueKey(inputConfiguration.border)),
    );
  }

  Widget _overlayChildBuilder(BuildContext context) {
    final viewModel = context.read<MyoroDropdownViewModel<T, C>>();

    return ValueListenableBuilder(
      valueListenable: viewModel.state.inputSizeNotifier,
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
