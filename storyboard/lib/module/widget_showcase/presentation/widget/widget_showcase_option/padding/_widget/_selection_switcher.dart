part of '../padding_widget_showcase_option.dart';

/// [MyoroSingularDropdown] to change the mode of [_Selection].
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

    return MyoroSingularDropdown<PaddingWidgetShowcaseOptionEnum>(
      configuration: MyoroSingularDropdownConfiguration(
        label: 'Selection type',
        allowItemClearing: false,
        onChanged: (value) => state.modeEnum = value!,
        selectedItemBuilder: formattedName,
        menuConfiguration: MyoroSingularMenuConfiguration(
          request: PaddingWidgetShowcaseOptionEnum.values.toSet,
          selectedItem: modeEnum,
          itemBuilder: (value) {
            return MyoroMenuItem(
              iconTextButtonConfiguration: MyoroIconTextButtonConfiguration(
                textConfiguration: MyoroTextConfiguration(text: formattedName(value)),
              ),
            );
          },
        ),
      ),
    );
  }
}
