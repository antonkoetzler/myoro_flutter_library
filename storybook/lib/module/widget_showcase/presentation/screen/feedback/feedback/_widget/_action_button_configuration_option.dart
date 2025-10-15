part of '../myoro_feedback_widget_showcase_screen.dart';

/// [MyoroFeedbackConfiguration.actionButtonConfiguration] of [MyoroFeedbackWidgetShowcaseScreen].
final class _ActionButtonConfigurationOption extends StatelessWidget {
  const _ActionButtonConfigurationOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroFeedbackWidgetShowcaseScreenViewModel>();

    return MyoroCheckbox(
      configuration: MyoroCheckboxConfiguration(
        label: 'Show action button?',
        onChanged: (enabled) => viewModel.state.actionButtonConfigurationEnabled = enabled,
      ),
    );
  }
}
