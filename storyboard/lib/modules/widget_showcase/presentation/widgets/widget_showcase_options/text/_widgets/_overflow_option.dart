part of '../text_widget_showcase_option.dart';

/// [Text.overflow] option of [TextWidgetShowcaseOption].
final class _OverflowOption extends StatelessWidget {
  const _OverflowOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<TextWidgetShowcaseOptionViewModel>();

    return MyoroSingularDropdown<TextOverflow>(
      configuration: MyoroSingularDropdownConfiguration(
        label: 'Text.overflow',
        checkboxOnChanged: (enabled, value) => viewModel.overflow = enabled ? value : null,
        onChanged: (value) => viewModel.overflow = value,
        selectedItemBuilder: (value) => value.toString(),
        menuConfiguration: MyoroMenuConfiguration(
          request: TextOverflow.values.toSet,
          itemBuilder: (value) {
            return MyoroMenuItem(textConfiguration: MyoroIconTextButtonTextConfiguration(text: value.toString()));
          },
        ),
      ),
    );
  }
}
