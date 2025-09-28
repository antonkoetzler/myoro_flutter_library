part of '../bundle/myoro_selection_dropdown_bundle.dart';

/// [MyoroInput] that displays selected items and provides functionality such as the clear selected items button.
final class _Input<T, V extends _ViewModelType<T>> extends StatefulWidget {
  const _Input();

  @override
  State<_Input<T, V>> createState() => _InputState<T, V>();
}

final class _InputState<T, V extends _ViewModelType<T>> extends State<_Input<T, V>> {
  @override
  Widget build(context) {
    final viewModel = context.read<V>();
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
        _InputTriggerArea<T, V>(),
      ],
    );

    return switch (viewModel.state.configuration.menuTypeEnum) {
      MyoroSelectionDropdownMenuTypeEnum.overlay => OverlayPortal(
        controller: viewModel.state.overlayMenuController,
        overlayChildBuilder: _overlayChildBuilder,
        child: child,
      ),
      MyoroSelectionDropdownMenuTypeEnum.expanding => child,
      MyoroSelectionDropdownMenuTypeEnum.modal => child,
    };
  }

  Widget _createInputWidget(BuildContext context, bool enabled, bool showingMenu) {
    final viewModel = context.read<V>();
    final state = viewModel.state;
    final configuration = state.configuration;
    final menuTypeEnum = configuration.menuTypeEnum;
    final inputKey = state.inputKey;
    final inputController = state.inputController;
    final selectedItemTextAlign = configuration.selectedItemTextAlign;
    final label = configuration.label;
    final allowItemClearing = configuration.allowItemClearing;
    final menuController = state.menuController;
    final clear = menuController.clear;

    final inputThemeExtension = context.resolveThemeExtension<MyoroInputThemeExtension>();
    final outlinedBorder = inputThemeExtension.outlinedBorder;
    final menuActiveInputBorderRadius = outlinedBorder?.copyWith(
      borderRadius: outlinedBorder.borderRadius.copyWith(bottomLeft: Radius.zero, bottomRight: Radius.zero),
    );
    final inputBorder = switch (menuTypeEnum) {
      MyoroSelectionDropdownMenuTypeEnum.overlay => showingMenu ? menuActiveInputBorderRadius : null,
      MyoroSelectionDropdownMenuTypeEnum.expanding => showingMenu ? menuActiveInputBorderRadius : null,
      MyoroSelectionDropdownMenuTypeEnum.modal => null,
    };

    final inputConfiguration = MyoroInputConfiguration(
      textAlign: selectedItemTextAlign,
      label: label,
      enabled: enabled,
      readOnly: true,
      showClearTextButton: allowItemClearing,
      onCleared: clear,
      controller: inputController,
    );

    return MyoroInput(
      key: inputKey,
      // This copyWith is to disable the [BoxBorder] lerp animation when we need to alter the bottom corners of
      // this [MyoroInput] when the dropdown is opened when menuTypeEnum is [MyoroDropdownMenuTypeEnum.expanding].
      configuration: inputConfiguration.copyWith(inputKey: ValueKey(inputBorder)),
      style: MyoroInputStyle(border: inputBorder),
    );
  }

  Widget _overlayChildBuilder(BuildContext context) {
    final viewModel = context.read<V>();
    final state = viewModel.state;
    final link = state.link;
    final inputSizeNotifier = state.inputSizeNotifier;

    return ValueListenableBuilder(
      valueListenable: inputSizeNotifier,
      builder: (_, Size? inputSize, _) {
        return Positioned(
          width: inputSize?.width,
          child: CompositedTransformFollower(
            link: link,
            offset: Offset(0, inputSize?.height ?? 0),
            child: _Menu<T, V>(),
          ),
        );
      },
    );
  }
}
