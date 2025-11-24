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
          final icon = state.icon;
          final title = state.title;
          final subtitle = state.subtitle;
          final iconStyle = state.iconStyle;
          final titleTextStyle = state.titleTextStyle;
          final subtitleTextStyle = state.subtitleTextStyle;
          final actionButtonConfigurationEnabled = state.actionButtonConfigurationEnabled;

          return MyoroFeedback(
            icon: icon,
            title: title,
            subtitle: subtitle,
            style: MyoroFeedbackStyle(
              iconStyle: iconStyle,
              titleTextStyle: titleTextStyle,
              subtitleTextStyle: subtitleTextStyle,
            ),
            actionButtonText: localization.storybookFeedbackActionButtonText,
            actionButtonConfiguration:
                actionButtonConfigurationEnabled ? MyoroFeedbackActionButtonConfiguration(onTapUp: (_, _) {}) : null,
          );
        },
      ),
    );
  }
}
