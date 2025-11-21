part of '../myoro_feedback_widget_showcase_screen.dart';

/// [WidgetShowcaseScreenConfiguration.widget] of [MyoroFeedbackWidgetShowcaseScreen].
final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroFeedbackWidgetShowcaseScreenViewModel>();
    final state = viewModel.state;

    return Center(
      child: ListenableBuilder(
        listenable: state,
        builder: (_, _) {
          final iconConfiguration = state.iconConfiguration;
          final title = state.title;
          final subtitle = state.subtitle;
          final titleConfiguration = state.titleConfiguration;
          final subtitleConfiguration = state.subtitleConfiguration;
          final actionButtonConfigurationEnabled = state.actionButtonConfigurationEnabled;

          return MyoroFeedback(
            iconConfiguration: iconConfiguration,
            title: title,
            subtitle: subtitle,
            titleConfiguration: titleConfiguration,
            subtitleConfiguration: subtitleConfiguration,
            actionButtonText: localization.storybookFeedbackActionButtonText,
            actionButtonConfiguration:
                actionButtonConfigurationEnabled ? MyoroFeedbackActionButtonConfiguration(onTapUp: (_, _) {}) : null,
          );
        },
      ),
    );
  }
}
