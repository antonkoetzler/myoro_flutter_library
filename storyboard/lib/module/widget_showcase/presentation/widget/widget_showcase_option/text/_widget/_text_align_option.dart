part of '../text_widget_showcase_option.dart';

/// [Text.textAlign] option of [TextWidgetShowcaseOption].
final class _TextAlignOption extends StatelessWidget {
  const _TextAlignOption();

  @override
  Widget build(context) {
    final viewModel = context.read<TextWidgetShowcaseOptionViewModel>();
    final configuration = viewModel.configuration;
    final alignmentInitialValue = configuration.alignmentInitialValue;
    final alignmentOnChanged = configuration.alignmentOnChanged;
    final alignmentCheckboxOnChanged = configuration.alignmentCheckboxOnChanged;

    return TextAlignWidgetShowcaseOption(
      initiallySelectedValue: alignmentInitialValue,
      onChanged: alignmentOnChanged!,
      checkboxOnChanged: alignmentCheckboxOnChanged,
    );
  }
}
