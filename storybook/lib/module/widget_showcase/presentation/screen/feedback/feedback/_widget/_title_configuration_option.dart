part of '../myoro_feedback_widget_showcase_screen.dart';

/// [MyoroFeedbackConfiguration.titleConfiguration] option of [MyoroFeedbackWidgetShowcaseScreen].
final class _TitleConfigurationOption extends StatelessWidget {
  const _TitleConfigurationOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroFeedbackWidgetShowcaseScreenViewModel>();
    final state = viewModel.state;
    final title = state.title;
    final titleTextStyle = state.titleTextStyle;

    return TextWidgetShowcaseOption(
      configuration: TextWidgetShowcaseOptionConfiguration(
        textInitialValue: title,
        textOnChanged: viewModel.titleTextStyleTextOnChanged,
        maxLinesInitialValue: titleTextStyle?.maxLines ?? MyoroTextStyle.maxLinesDefaultValue,
        maxLinesOnChanged: viewModel.titleTextStyleMaxLinesOnChanged,
        overflowInitialValue: titleTextStyle?.overflow ?? MyoroTextStyle.overflowDefaultValue,
        overflowOnChanged: viewModel.titleTextStyleOverflowOnChanged,
        alignmentInitialValue: titleTextStyle?.alignment ?? MyoroTextStyle.alignmentDefaultValue,
        alignmentOnChanged: viewModel.titleTextStyleAlignmentOnChanged,
        styleInitialValue: titleTextStyle?.style,
        styleOnChanged:
            (textStyle) =>
                state.titleTextStyle =
                    state.titleTextStyle?.copyWith(style: textStyle) ?? MyoroTextStyle(style: textStyle),
      ),
    );
  }
}
