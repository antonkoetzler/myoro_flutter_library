part of '../text_widget_showcase_option.dart';

/// [Text.maxLines] option of [TextWidgetShowcaseOption].
final class _MaxLinesOption extends StatelessWidget {
  const _MaxLinesOption();

  @override
  Widget build(context) {
    final viewModel = context.read<TextWidgetShowcaseOptionViewModel>();
    final configuration = viewModel.configuration;
    final maxLinesInitialValue = configuration.maxLinesInitialValue;
    final maxLinesOnChanged = configuration.maxLinesOnChanged;
    final maxLinesCheckboxOnChanged = configuration.maxLinesCheckboxOnChanged;

    return TextMaxLinesWidgetShowcaseOption(
      initiallySelectedItem: maxLinesInitialValue,
      onChanged: maxLinesOnChanged!,
      checkboxOnChanged: maxLinesCheckboxOnChanged,
    );
  }
}
