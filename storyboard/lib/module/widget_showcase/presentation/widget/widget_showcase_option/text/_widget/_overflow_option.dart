part of '../text_widget_showcase_option.dart';

/// [Text.overflow] option of [TextWidgetShowcaseOption].
final class _OverflowOption extends StatelessWidget {
  const _OverflowOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<TextWidgetShowcaseOptionViewModel>();
    final configuration = viewModel.configuration;
    final overflowInitialValue = configuration.overflowInitialValue;
    final overflowOnChanged = configuration.overflowOnChanged;
    final overflowCheckboxOnChanged = configuration.overflowCheckboxOnChanged;

    return TextOverflowWidgetShowcaseOption(
      initiallySelectedItem: overflowInitialValue,
      onChanged: overflowOnChanged!,
      checkboxOnChanged: overflowCheckboxOnChanged,
    );
  }
}
