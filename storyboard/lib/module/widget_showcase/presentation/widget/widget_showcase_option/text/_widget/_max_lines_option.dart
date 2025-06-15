part of '../text_widget_showcase_option.dart';

/// [Text.maxLines] option of [TextWidgetShowcaseOption].
final class _MaxLinesOption extends StatelessWidget {
  const _MaxLinesOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<TextWidgetShowcaseOptionViewModel>();

    return TextMaxLinesWidgetShowcaseOption(
      onChanged: (value) => viewModel.maxLines = value,
      checkboxOnChanged: (enabled, value) => viewModel.maxLines = enabled ? value : null,
    );
  }
}
