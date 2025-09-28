part of '../bundle/myoro_selection_dropdown_bundle.dart';

/// [MyoroInput] that displays selected items and provides functionality such as the clear selected items button.
final class _Input<T, V extends _ViewModelType<T>> extends StatelessWidget {
  const _Input();

  @override
  Widget build(context) {
    final viewModel = context.read<V>();
    final state = viewModel.state;
    final configuration = state.configuration;
    final dropdownType = configuration.dropdownType;
    final inputKey = state.inputKey;
    final inputController = state.inputController;
    final selectedItemTextAlign = configuration.selectedItemTextAlign;
    final label = configuration.label;
    final allowItemClearing = configuration.allowItemClearing;
    final menuController = state.menuController;
    final clear = menuController.clear;
    final enabled = state.enabled;

    final inputThemeExtension = context.resolveThemeExtension<MyoroInputThemeExtension>();
    final outlinedBorder = inputThemeExtension.outlinedBorder;
    final menuActiveInputBorderRadius = outlinedBorder?.copyWith(
      borderRadius: outlinedBorder.borderRadius.copyWith(bottomLeft: Radius.zero, bottomRight: Radius.zero),
    );
    final inputBorder = switch (dropdownType) {
      MyoroDropdownTypeEnum.overlay => showingMenu ? menuActiveInputBorderRadius : null,
      MyoroDropdownTypeEnum.expanding => showingMenu ? menuActiveInputBorderRadius : null,
      MyoroDropdownTypeEnum.modal => null,
      MyoroDropdownTypeEnum.bottomSheet => null,
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

    return Stack(
      children: [
        MyoroInput(
          key: inputKey,
          // This copyWith is to disable the [BoxBorder] lerp animation when we need to alter the bottom corners of
          // this [MyoroInput] when the dropdown is opened when dropdownType is [MyoroDropdownMenuTypeEnum.expanding].
          configuration: inputConfiguration.copyWith(inputKey: ValueKey(inputBorder)),
          style: MyoroInputStyle(border: inputBorder),
        ),
        _InputTriggerArea<T, V>(),
      ],
    );
  }
}
