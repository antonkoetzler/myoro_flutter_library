part of '../myoro_dropdowns_widget_showcase_screen.dart';

/// [MyoroDropdown.dropdownType] of [MyoroDropdownWidgetShowcaseScreen].
final class _DropdownTypeOption extends StatelessWidget {
  const _DropdownTypeOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroDropdownsWidgetShowcaseScreenViewModel>();
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
