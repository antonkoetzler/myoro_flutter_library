part of '../myoro_input_dropdowns_widget_showcase_screen.dart';

/// [MyoroInputDropdown.dropdownType] of [MyoroInputDropdownsWidgetShowcaseScreen].
final class _DropdownTypeOption extends StatelessWidget {
  const _DropdownTypeOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroInputDropdownsWidgetShowcaseScreenViewModel>();
    final state = viewModel.state;
    final dropdownType = state.dropdownType;
    final dropdownTypeOptionItemBuilder = viewModel.dropdownTypeOptionItemBuilder;
    final dropdownTypeOptionSelectedItemBuilder = viewModel.dropdownTypeOptionSelectedItemBuilder;

    return MyoroSingleSelectionDropdown<MyoroDropdownTypeEnum>(
      configuration: MyoroSingleSelectionDropdownConfiguration(
        menuConfiguration: MyoroSingleMenuConfiguration(
          request: MyoroDropdownTypeEnum.values.toSet,
          itemBuilder: dropdownTypeOptionItemBuilder,
          selectedItem: dropdownType,
        ),
        onChanged: (v) => state.dropdownType = v!,
        selectedItemBuilder: dropdownTypeOptionSelectedItemBuilder,
      ),
    );
  }
}
