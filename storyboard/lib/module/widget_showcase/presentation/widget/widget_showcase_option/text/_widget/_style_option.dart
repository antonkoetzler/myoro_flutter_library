part of '../text_widget_showcase_option.dart';

/// [Text.style] option of [TextWidgetShowcaseOption].
final class _StyleOption extends StatelessWidget {
  const _StyleOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<TextWidgetShowcaseOptionViewModel>();
    final configuration = viewModel.configuration;
    final styleInitialValue = configuration.styleInitialValue;
    final styleOnChanged = configuration.styleOnChanged;
    final styleCheckboxOnChanged = configuration.styleCheckboxOnChanged;

    return TextStyleWidgetShowcaseOption(
      initiallySelectedItem: styleInitialValue,
      onChanged: styleOnChanged!,
      checkboxOnChanged: styleCheckboxOnChanged,
    );
  }
}
