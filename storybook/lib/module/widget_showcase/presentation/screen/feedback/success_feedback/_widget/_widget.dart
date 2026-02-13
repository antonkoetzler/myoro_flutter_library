part of '../myoro_success_feedback_widget_showcase_screen.dart';

/// [WidgetShowcaseScreenConfiguration.widget] of [MyoroSuccessFeedbackWidgetShowcaseScreen].
final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(context) {
    return Center(
      child: MyoroSuccessFeedback(title: 'Operation successful', onFinishButtonTapped: () {}),
    );
  }
}
