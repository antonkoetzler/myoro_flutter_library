part of '../padding_widget_showcase_option.dart';

/// [MyoroSingularDropdown] to change the mode of [_Selection].
final class _SelectionSwitcher extends StatelessWidget {
  const _SelectionSwitcher();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<PaddingWidgetShowcaseOptionViewModel>();

    return MyoroSingularDropdown<PaddingWidgetShowcaseOptionEnum>(
      controller: MyoroSingularDropdownController(initiallySelectedItem: viewModel.modeEnum),
      configuration: MyoroSingularDropdownConfiguration(
        label: 'Selection type',
        allowItemClearing: false,
        onChanged: (value) => viewModel.modeEnumController.value = value!,
        selectedItemBuilder: _formattedName,
        menuConfiguration: MyoroMenuConfiguration(
          request: PaddingWidgetShowcaseOptionEnum.values.toSet,
          itemBuilder: (value) {
            return MyoroMenuItem(textConfiguration: MyoroIconTextButtonTextConfiguration(text: _formattedName(value)));
          },
        ),
      ),
    );
  }

  String _formattedName(PaddingWidgetShowcaseOptionEnum modeEnum) {
    return 'EdgeInsets.${modeEnum.name}';
  }
}
