part of '../text_widget_showcase_option.dart';

/// [Text.style] option of [TextWidgetShowcaseOption].
final class _StyleOption extends StatelessWidget {
  const _StyleOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<TextWidgetShowcaseOptionViewModel>();

    return TextStyleWidgetShowcaseOption(
      onChanged: (value) => viewModel.style = value,
      checkboxOnChanged: (enabled, value) => viewModel.style = enabled ? value : null,
    );
  }
}
