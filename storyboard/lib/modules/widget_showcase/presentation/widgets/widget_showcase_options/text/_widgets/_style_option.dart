part of '../text_widget_showcase_option.dart';

/// [Text.style] option of [TextWidgetShowcaseOption].
final class _StyleOption extends StatelessWidget {
  const _StyleOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<TextWidgetShowcaseOptionViewModel>();
    final typography = MyoroTypographyDesignSystem.instance;

    return MyoroSingularDropdown<TextStyle>(
      configuration: MyoroSingularDropdownConfiguration(
        label: 'Text style',
        onChanged: (value) => viewModel.style = value,
        checkboxOnChanged: (enabled, value) => viewModel.style = enabled ? value : null,
        selectedItemBuilder: typography.getTextStyleName,
        menuConfiguration: MyoroMenuConfiguration(
          request: typography.allTextStyles.toSet,
          itemBuilder: (value) {
            return MyoroMenuItem(
              textConfiguration: MyoroIconTextButtonTextConfiguration(text: typography.getTextStyleName(value)),
            );
          },
        ),
      ),
    );
  }
}
