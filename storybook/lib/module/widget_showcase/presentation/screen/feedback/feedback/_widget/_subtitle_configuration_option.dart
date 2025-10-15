part of '../myoro_feedback_widget_showcase_screen.dart';

/// [MyoroFeedbackConfiguration.subsubtitleConfiguration] option of [MyoroFeedbackWidgetShowcaseScreen].
final class _SubtitleConfigurationOption extends StatelessWidget {
  const _SubtitleConfigurationOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroFeedbackWidgetShowcaseScreenViewModel>();
    final state = viewModel.state;
    final subtitleConfiguration = state.subtitleConfiguration;

    return TextWidgetShowcaseOption(
      configuration: TextWidgetShowcaseOptionConfiguration(
        textInitialValue: subtitleConfiguration?.text ?? '',
        textOnChanged: viewModel.subtitleConfigurationTextOnChanged,
        maxLinesInitialValue: subtitleConfiguration?.maxLines ?? 1,
        maxLinesOnChanged: viewModel.subtitleConfigurationMaxLinesOnChanged,
        overflowInitialValue: subtitleConfiguration?.overflow ?? TextOverflow.ellipsis,
        overflowOnChanged: viewModel.subtitleConfigurationOverflowOnChanged,
        alignmentInitialValue: subtitleConfiguration?.alignment ?? TextAlign.center,
        alignmentOnChanged: viewModel.subtitleConfigurationAlignmentOnChanged,
      ),
    );
  }
}
