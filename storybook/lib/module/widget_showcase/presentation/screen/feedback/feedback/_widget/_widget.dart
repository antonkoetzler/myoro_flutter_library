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
          final titleConfiguration = state.titleConfiguration;
          final subtitleConfiguration = state.subtitleConfiguration;
          final actionButtonConfigurationEnabled = state.actionButtonConfigurationEnabled;

          return MyoroFeedback(
            iconConfiguration: iconConfiguration,
            titleConfiguration: titleConfiguration,
            subtitleConfiguration: subtitleConfiguration,
            actionButtonConfiguration:
                actionButtonConfigurationEnabled
                    ? MyoroFeedbackActionButtonConfiguration(
                      textConfiguration: const MyoroTextConfiguration(text: 'Action button'),
                      onTapUp: (_) {},
                    )
                    : null,
          );
        },
      ),
    );
  }
}
