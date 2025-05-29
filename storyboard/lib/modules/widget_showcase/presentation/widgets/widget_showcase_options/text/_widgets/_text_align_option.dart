part of '../text_widget_showcase_option.dart';

/// [Text.textAlign] option of [TextWidgetShowcaseOption].
final class _TextAlignOption extends StatelessWidget {
  const _TextAlignOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<TextWidgetShowcaseOptionViewModel>();

    return MyoroSingularDropdown(
      configuration: MyoroSingularDropdownConfiguration(
        label: 'Text alignment',
        onChanged: (value) => viewModel.textAlign = value,
        checkboxOnChanged: (enabled, value) => viewModel.textAlign = enabled ? value : null,
        selectedItemBuilder: (value) => value.toString(),
        menuConfiguration: MyoroMenuConfiguration(
          request: TextAlign.values.toSet,
          itemBuilder: (value) {
            return MyoroMenuItem(textConfiguration: MyoroIconTextButtonTextConfiguration(text: value.toString()));
          },
        ),
      ),
    );
  }
}
