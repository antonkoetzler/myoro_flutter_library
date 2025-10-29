part of '../myoro_selection_dropdowns_widget_showcase_screen.dart';

/// [MyoroDropdownTypeEnum] option for multi selection dropdown of [MyoroSelectionDropdownsWidgetShowcaseScreen].
final class _MultiDropdownTypeOption extends StatelessWidget {
  const _MultiDropdownTypeOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroSelectionDropdownsWidgetShowcaseScreenViewModel>();

    return MyoroSingleSelectionDropdown<MyoroDropdownTypeEnum>(
      label: 'Multi dropdown type',
      selectedItemBuilder: (type) => type.name.capitalized,
      onChanged: (type) => viewModel.state.multiDropdownType = type!,
      items: MyoroDropdownTypeEnum.values.toSet(),
      selectedItem: viewModel.state.multiDropdownType,
      itemBuilder: (type) {
        return MyoroMenuIconTextButtonItem(textConfiguration: MyoroTextConfiguration(text: type.name.capitalized));
      },
    );
  }
}
