part of '../myoro_dropdown_widget_showcase_screen.dart';

/// [MyoroDropdownConfiguration.dropdownType] option of [MyoroDropdownWidgetShowcaseScreen].
final class _DropdownTypeOption extends StatelessWidget {
  const _DropdownTypeOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroDropdownWidgetShowcaseScreenViewModel>();
    final state = viewModel.state;

    return MyoroSingleSelectionDropdown<MyoroDropdownTypeEnum>(
      label: 'Dropdown Type',
      items: MyoroDropdownTypeEnum.values.toSet(),
      selectedItem: state.dropdownType,
      itemBuilder: (_, type) => MyoroMenuButtonItem(builder: (context, tapStatusEnum) => Text(type.name)),
      selectedItemBuilder: (type) => type.name,
      onChanged: (type) => state.dropdownType = type!,
    );
  }
}
