part of '../myoro_selection_dropdowns_widget_showcase_screen.dart';

/// [MyoroDropdownTypeEnum] option for single selection dropdown of [MyoroSelectionDropdownsWidgetShowcaseScreen].
final class _SingleDropdownTypeOption extends StatelessWidget {
  const _SingleDropdownTypeOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroSelectionDropdownsWidgetShowcaseScreenViewModel>();

    return MyoroSingleSelectionDropdown<MyoroDropdownTypeEnum>(
      label: 'Single dropdown type',
      selectedItemBuilder: (type) => type.name.capitalized,
      onChanged: (type) => viewModel.state.singleDropdownType = type!,
      items: MyoroDropdownTypeEnum.values.toSet(),
      selectedItem: viewModel.state.singleDropdownType,
      itemBuilder: (type, _) {
        return MyoroMenuIconTextButtonItem(textConfiguration: MyoroTextConfiguration(text: type.name.capitalized));
      },
    );
  }
}
