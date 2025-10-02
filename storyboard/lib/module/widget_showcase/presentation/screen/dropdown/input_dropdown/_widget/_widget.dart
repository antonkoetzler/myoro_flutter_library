part of '../myoro_input_dropdowns_widget_showcase_screen.dart';

/// [WidgetShowcaseScreenConfiguration.widget] of [MyoroInputDropdownsWidgetShowcaseScreen].
final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(context) {
    final widgetShowcaseThemeExtension = context.resolveThemeExtension<WidgetShowcaseThemeExtension>();
    final spacing = widgetShowcaseThemeExtension.spacing;

    return Column(
      spacing: spacing,
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: MyoroSingleInputDropdown(
            configuration: MyoroSingleInputDropdownConfiguration(
              dropdownType: MyoroDropdownTypeEnum.overlay,
              menuConfiguration: MyoroSingleMenuConfiguration(
                request: () => {'Start'},
                itemBuilder:
                    (item) => MyoroMenuItem(
                      iconTextButtonConfiguration: MyoroIconTextButtonConfiguration(
                        textConfiguration: MyoroTextConfiguration(text: item),
                      ),
                    ),
              ),
              selectedItemBuilder: (item) => item,
            ),
          ),
        ),
        Flexible(
          child: MyoroMultiInputDropdown(
            configuration: MyoroMultiInputDropdownConfiguration(
              dropdownType: MyoroDropdownTypeEnum.overlay,
              menuConfiguration: MyoroMultiMenuConfiguration(
                request: () => {'Start'},
                itemBuilder:
                    (item) => MyoroMenuItem(
                      iconTextButtonConfiguration: MyoroIconTextButtonConfiguration(
                        textConfiguration: MyoroTextConfiguration(text: item),
                      ),
                    ),
              ),
              selectedItemBuilder: (item) => item,
            ),
          ),
        ),
      ],
    );
  }
}
