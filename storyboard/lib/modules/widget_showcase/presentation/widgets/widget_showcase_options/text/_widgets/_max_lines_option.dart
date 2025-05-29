part of '../text_widget_showcase_option.dart';

/// [Text.maxLines] option of [TextWidgetShowcaseOption].
final class _MaxLinesOption extends StatelessWidget {
  const _MaxLinesOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<TextWidgetShowcaseOptionViewModel>();

    return MyoroSingularDropdown<int>(
      controller: MyoroSingularDropdownController(initiallySelectedItem: 1),
      configuration: MyoroSingularDropdownConfiguration(
        allowItemClearing: false,
        checkboxOnChanged: (enabled, value) => viewModel.maxLines = enabled ? value : null,
        selectedItemBuilder: (value) => value.toString(),
        menuConfiguration: MyoroMenuConfiguration(
          request: () => List.generate(10, (int index) => index + 1).toSet(),
          itemBuilder: (value) {
            return MyoroMenuItem(textConfiguration: MyoroIconTextButtonTextConfiguration(text: value.toString()));
          },
        ),
      ),
    );
  }
}
