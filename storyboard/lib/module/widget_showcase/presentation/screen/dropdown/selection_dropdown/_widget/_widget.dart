part of '../myoro_selection_dropdowns_widget_showcase_screen.dart';

/// Widget of [MyoroSelectionDropdownsWidgetShowcaseScreen].
final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<WidgetShowcaseThemeExtension>();
    final spacing = themeExtension.spacing;

    return Column(
      spacing: spacing,
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: MyoroSingleSelectionDropdownV2(
            configuration: MyoroSingleSelectionDropdownV2Configuration(
              dropdownType: MyoroDropdownTypeEnum.overlay, // TODO: Add option
              menuConfiguration: MyoroSingleMenuConfiguration(
                request: () => {'Start'},
                itemBuilder: (item) {
                  return MyoroMenuItem(
                    iconTextButtonConfiguration: MyoroIconTextButtonConfiguration(
                      textConfiguration: MyoroTextConfiguration(text: item),
                    ),
                  );
                },
              ),
              selectedItemBuilder: (item) => item,
            ),
          ),
        ),
        Flexible(
          child: MyoroMultiSelectionDropdownV2(
            configuration: MyoroMultiSelectionDropdownV2Configuration(
              dropdownType: MyoroDropdownTypeEnum.overlay, // TODO: Add option
              menuConfiguration: MyoroMultiMenuConfiguration(
                request: () => {'Start'},
                itemBuilder: (item) {
                  return MyoroMenuItem(
                    iconTextButtonConfiguration: MyoroIconTextButtonConfiguration(
                      textConfiguration: MyoroTextConfiguration(text: item),
                    ),
                  );
                },
              ),
              selectedItemBuilder: (item) => item,
            ),
          ),
        ),
      ],
    );
  }
}
