part of '../myoro_feedback_widget_showcase_screen.dart';

/// [MyoroFeedbackConfiguration.titleConfiguration] option of [MyoroFeedbackWidgetShowcaseScreen].
final class _TitleConfigurationOption extends StatelessWidget {
  const _TitleConfigurationOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroFeedbackWidgetShowcaseScreenViewModel>();
    final state = viewModel.state;
    final titleConfiguration = state.titleConfiguration;

    return TextWidgetShowcaseOption(
      configuration: TextWidgetShowcaseOptionConfiguration(
        textInitialValue: titleConfiguration.text,
        textOnChanged: viewModel.titleConfigurationTextOnChanged,
        maxLinesInitialValue: titleConfiguration.maxLines,
        maxLinesOnChanged: viewModel.titleConfigurationMaxLinesOnChanged,
        overflowInitialValue: titleConfiguration.overflow,
        overflowOnChanged: viewModel.titleConfigurationOverflowOnChanged,
        alignmentInitialValue: titleConfiguration.alignment,
        alignmentOnChanged: viewModel.titleConfigurationAlignmentOnChanged,
      ),
    );
  }
}
