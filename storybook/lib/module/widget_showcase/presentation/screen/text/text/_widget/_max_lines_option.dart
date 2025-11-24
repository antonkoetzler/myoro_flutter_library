part of '../myoro_text_widget_showcase_screen.dart';

/// [MyoroTextStyle.maxLines] option of [MyoroTextWidgetShowcaseScreen].
final class _MaxLinesOption extends StatelessWidget {
  const _MaxLinesOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroTextWidgetShowcaseScreenViewModel>();
    final state = viewModel.state;

    return TextMaxLinesWidgetShowcaseOption(
      label: localization.storybookWidgetShowcaseOptionTextMaxLinesLabel,
      selectedItem: state.maxLines ?? MyoroTextStyle.maxLinesDefaultValue,
      onChanged: (maxLines) => state.maxLines = maxLines,
    );
  }
}
