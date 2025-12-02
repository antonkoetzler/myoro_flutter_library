part of '../myoro_error_feedback_widget_showcase_screen.dart';

/// [WidgetShowcaseScreenConfiguration.widget] of [MyoroErrorFeedbackWidgetShowcaseScreen].
final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(context) {
    return Center(child: MyoroErrorFeedback(title: 'Error occurred', onRetry: (_) {}));
  }
}
