part of '../padding_widget_showcase_option.dart';

/// [MyoroSingularDropdown] to change the mode of [_Selection].
final class _SelectionSwitcher extends StatelessWidget {
  const _SelectionSwitcher();

  @override
  Widget build(context) {
    final viewModel = context.read<PaddingWidgetShowcaseOptionViewModel>();

    return MyoroSingularDropdown<PaddingWidgetShowcaseOptionEnum>(
      configuration: MyoroSingularDropdownConfiguration(
        label: 'Selection type',
        allowItemClearing: false,
        onChanged: (value) => viewModel.modeEnumController.value = value!,
        selectedItemBuilder: _formattedName,
        menuConfiguration: MyoroMenuConfiguration(
          request: PaddingWidgetShowcaseOptionEnum.values.toSet,
          itemBuilder: (value) {
            return MyoroMenuItem(textConfiguration: MyoroTextConfiguration(text: _formattedName(value)));
          },
        ),
        selectedItem: viewModel.modeEnum,
      ),
    );
  }

  String _formattedName(PaddingWidgetShowcaseOptionEnum modeEnum) {
    return 'EdgeInsets.${modeEnum.name}';
  }
}
