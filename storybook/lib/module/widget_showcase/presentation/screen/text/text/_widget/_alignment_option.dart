part of '../myoro_text_widget_showcase_screen.dart';

/// [MyoroTextStyle.alignment] option of [MyoroTextWidgetShowcaseScreen].
final class _AlignmentOption extends StatelessWidget {
  const _AlignmentOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroTextWidgetShowcaseScreenViewModel>();
    final state = viewModel.state;

    return TextAlignWidgetShowcaseOption(
      label: localization.storybookWidgetShowcaseOptionTextAlignmentLabel,
      selectedValue: state.alignment ?? MyoroTextStyle.alignmentDefaultValue,
      onChanged: (alignment) => state.alignment = alignment,
    );
  }
}
