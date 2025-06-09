part of '../text_widget_showcase_option.dart';

/// [Text.textAlign] option of [TextWidgetShowcaseOption].
final class _TextAlignOption extends StatelessWidget {
  const _TextAlignOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<TextWidgetShowcaseOptionViewModel>();

    return TextAlignWidgetShowcaseOption(
      onChanged: (value) => viewModel.textAlign = value,
      checkboxOnChanged: (enabled, value) => viewModel.textAlign = enabled ? value : null,
    );
  }
}
