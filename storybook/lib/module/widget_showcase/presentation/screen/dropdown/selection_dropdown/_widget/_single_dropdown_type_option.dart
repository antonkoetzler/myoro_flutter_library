part of '../myoro_selection_dropdowns_widget_showcase_screen.dart';

/// [MyoroDropdownTypeEnum] option for single selection dropdown of [MyoroSelectionDropdownsWidgetShowcaseScreen].
final class _SingleDropdownTypeOption extends StatelessWidget {
  const _SingleDropdownTypeOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroSelectionDropdownsWidgetShowcaseScreenViewModel>();

    return MyoroSingleSelectionDropdown<MyoroDropdownTypeEnum>(
      configuration: MyoroSingleSelectionDropdownConfiguration(
        label: 'Single dropdown type',
        selectedItemBuilder: (type) => type.name.capitalized,
        onChanged: (type) => viewModel.state.singleDropdownType = type!,
        menuConfiguration: MyoroSingleMenuConfiguration(
          request: MyoroDropdownTypeEnum.values.toSet,
          selectedItem: viewModel.state.singleDropdownType,
          itemBuilder: (type) {
            return MyoroMenuIconTextButtonItem(
              configuration: MyoroIconTextButtonConfiguration(
                textConfiguration: MyoroTextConfiguration(text: type.name.capitalized),
              ),
            );
          },
        ),
      ),
    );
  }
}
