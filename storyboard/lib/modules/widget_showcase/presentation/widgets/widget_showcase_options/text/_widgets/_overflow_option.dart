part of '../text_widget_showcase_option.dart';

/// [Text.overflow] option of [TextWidgetShowcaseOption].
final class _OverflowOption extends StatelessWidget {
  const _OverflowOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<TextWidgetShowcaseOptionViewModel>();

    return TextOverflowWidgetShowcaseOption(
      onChanged: (value) => viewModel.overflow = value,
      checkboxOnChanged: (enabled, value) => viewModel.overflow = enabled ? value : null,
    );
  }
}
