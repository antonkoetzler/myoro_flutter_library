part of '../padding_widget_showcase_option.dart';

/// [MyoroSingleSelectionDropdown] to change the mode of [_Selection].
final class _SelectionSwitcher extends StatelessWidget {
  const _SelectionSwitcher();

  @override
  Widget build(context) {
    final viewModel = context.read<PaddingWidgetShowcaseOptionViewModel>();
    final state = viewModel.state;
    final modeEnum = state.modeEnum;

    String formattedName(PaddingWidgetShowcaseOptionEnum modeEnum) {
      return 'EdgeInsets.${modeEnum.name}';
    }

    return MyoroSingleSelectionDropdown<PaddingWidgetShowcaseOptionEnum>(
      label: 'Selection type',
      onChanged: (value) => state.modeEnum = value!,
      selectedItemBuilder: formattedName,
      itemBuilder: (value, _) {
        return MyoroMenuIconTextButtonItem(textConfiguration: MyoroTextConfiguration(text: formattedName(value)));
      },
      items: PaddingWidgetShowcaseOptionEnum.values.toSet(),
      selectedItem: modeEnum,
    );
  }
}
