part of '../myoro_feedback_widget_showcase_screen.dart';

/// [MyoroFeedbackConfiguration.subsubtitleConfiguration] option of [MyoroFeedbackWidgetShowcaseScreen].
final class _SubtitleConfigurationOption extends StatelessWidget {
  const _SubtitleConfigurationOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroFeedbackWidgetShowcaseScreenViewModel>();
    final state = viewModel.state;
    final subtitle = state.subtitle;
    final subtitleTextStyle = state.subtitleTextStyle;

    return TextWidgetShowcaseOption(
      configuration: TextWidgetShowcaseOptionConfiguration(
        textInitialValue: subtitle,
        textOnChanged: viewModel.subtitleTextStyleTextOnChanged,
        maxLinesInitialValue: subtitleTextStyle?.maxLines ?? MyoroTextStyle.maxLinesDefaultValue,
        maxLinesOnChanged: viewModel.subtitleTextStyleMaxLinesOnChanged,
        overflowInitialValue: subtitleTextStyle?.overflow ?? MyoroTextStyle.overflowDefaultValue,
        overflowOnChanged: viewModel.subtitleTextStyleOverflowOnChanged,
        alignmentInitialValue: subtitleTextStyle?.alignment ?? MyoroTextStyle.alignmentDefaultValue,
        alignmentOnChanged: viewModel.subtitleTextStyleAlignmentOnChanged,
        styleInitialValue: subtitleTextStyle?.style,
        styleOnChanged:
            (textStyle) =>
                state.subtitleTextStyle =
                    state.subtitleTextStyle?.copyWith(style: textStyle) ?? MyoroTextStyle(style: textStyle),
      ),
    );
  }
}
